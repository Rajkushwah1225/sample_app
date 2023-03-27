 require 'test_helper'
 
 class UserTest < ActiveSupport::TestCase
 
  def setup
    @user = User.new(name: "Example User", email: "user@example.com")
  end
 
 test "name should not be too long" do
  @user.name = "a" * 10
  assert_not @user.valid?
 end
 
 test "email should not be too long" do
  @user.email = "a" * 10 + "@example.com"
  assert_not @user.valid?
 end
 
end