require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(
              name: "Sergio Palechor",
              email: "test@test.com",
              password: "demodemo",
              password_confirmation: "demodemo"
            )
  end
  
  test "should be valid" do
    assert @user.valid?
  end
  
  test "name should be present" do
    @user.name = ""
    assert_not @user.valid?
  end
  
  test "email must be present" do
    @user.email = ""
    assert_not @user.valid?
  end
end
