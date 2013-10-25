require "test_helper"

#describe User do - spec syntax
class MessageTest < ActiveSupport::TestCase
  

  #let(:user) {build(:user)} - spec syntax
  before do
    @message = build(:message)
  end

  def test_valid
    skip
    assert @message.valid?
  end

  test "rejects a message without an email" do
    @message.email = nil
    assert @message.invalid?
  end

  test "rejects a message without a name" do
    @message.name = nil
    assert @message.invalid?
  end

  test "rejects a message without a subject" do
    @message.subject = nil
    assert @message.invalid?
  end

  test "rejects a message without a body" do
    @message.body = nil
    assert @message.invalid?
  end

  test "rejects a message with invalid email format" do
    @message.email = 'invalid@email,com'
    assert @message.invalid?
    refute_match Devise::email_regexp, @message.email
  end

end
