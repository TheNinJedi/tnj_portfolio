require 'test_helper'

class UserDecoratorTest < Draper::TestCase

  before do
    @user = create(:user).decorate
  end

  it 'displays full name properly as first + last name' do
    assert_equal @user.full_name, [@user.first_name, @user.last_name].join(" ")
  end

end
