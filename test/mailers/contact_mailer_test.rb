require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase
before do
  @message = build(:message)
  @email = ContactMailer.contact_us(@message).deliver
end


  test "that it delivers to support@TNJ-Portfolio.com" do
    assert_equal @email.to.pop, "support@TNJ-Portfolio.com"
  end

  test "that it comes from the user email" do
    assert_equal @email.from.pop, @message.email
  end

  test "that the message contains the subject" do
    assert_equal @email.subject, "[TNJ-Portfolio Contact Us] #{@message.subject}"
  end



end