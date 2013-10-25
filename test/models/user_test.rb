require "test_helper"

class UserTest < ActiveSupport::TestCase
  before do
    @user = build(:user)
  end

  test "rejects user without a first name" do
    @user.first_name = nil
    assert @user.invalid?
  end

  test "rejects user without a last name" do
    @user.first_name = nil
    assert @user.invalid?
  end
end