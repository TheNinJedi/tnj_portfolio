class User < ActiveRecord::Base

  has_many :projects, dependent: :destroy
  has_one :picture, as: :pictureable, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and 
  devise  :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, 
          :omniauthable, :omniauth_providers => [:facebook]

  # Setup accessible (or protected) attributes for your model
  attr_accessible :first_name, :last_name, :full_name, :email, :password, :password_confirmation, 
                  :remember_me, :provider, :uid

  validates :first_name, :last_name, presence: true

  after_create :send_welcome_email
  private

  def send_welcome_email
    UserMailer.welcome(self).deliver
  end

  def self.find_for_facebook_oauth(auth, signed_in_resource=nil)
  user = User.where(provider: auth.provider, uid: auth.uid).first
    unless user
      user = User.create( first_name:auth.info.first_name,
                          last_name:auth.info.last_name,
                          provider:auth.provider,
                          uid:auth.uid,
                          email:auth.info.email,
                          password:Devise.friendly_token[0,20]
                          )
    end
  user
  end

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
        user.first_name = data["first_name"] if user.first_name.blank?
        user.last_name = data["last_name"] if user.last_name.blank?
      end
    end
  end

end