class User < ActiveRecord::Base

  has_many :projects, dependent: :destroy
  has_one :picture, as: :pictureable, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and 
  devise  :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, 
          :omniauthable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :first_name, :last_name, :full_name, :email, :password, :password_confirmation, :remember_me

  validates :first_name, :last_name, presence: true

  after_create :send_welcome_email
  private

  def send_welcome_email
    UserMailer.welcome(self).deliver
  end

end
