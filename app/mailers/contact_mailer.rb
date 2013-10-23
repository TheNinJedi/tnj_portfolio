class ContactMailer < ActionMailer::Base
  # default from: "from@example.com"
  layout 'email'

  def contact_us(message)
      @message = message
      mail(to: "support@TNJ-Portfolio.com", from: @message.email, 
      subject: "[TNJ-Portfolio Contact Us] #{@message.subject}" )
    end

end
