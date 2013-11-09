class User < ActiveRecord::Base

  has_many :projects
  has_one :picture, as: :pictureable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name

  validates :first_name, :last_name, presence: true

  def full_name
    @full_name = [first_name, last_name].join(" ")
    #@full_name = "#{first_name} #{last_name}"
  end

  after_create :send_welcome_email
  private

  def send_welcome_email
    UserMailer.welcome(self).deliver
  end

end
