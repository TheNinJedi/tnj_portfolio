require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
before do
  @user = build(:user)
  @email = UserMailer.welcome(@user).deliver
end


  test "that it delivers UserMailer to users email" do
    assert_equal @email.to.pop, @user.email
  end

  test "that it comes from noreply@TNJ.com" do
    assert_equal @email.from.pop, "noreply@TNJ-Portfolio.com"
  end

  test "that the message contains the subject" do
    assert_equal @email.subject, "Thank You for Signing Up."
  end



end