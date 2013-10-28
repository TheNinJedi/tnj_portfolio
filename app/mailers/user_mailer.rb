class UserMailer < ActionMailer::Base
  default from: "noreply@TNJ-Portfolio.com"

  layout 'email'
  
  def welcome(user)
    @user = user
    mail(to: @user.email, subject: "Thank You for Signing Up.")
  end
  

end
