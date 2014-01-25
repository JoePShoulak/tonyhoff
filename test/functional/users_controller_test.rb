require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "must have not invalid email" do
    u = User.new
    u.email = "a"
    assert !u.save
  end
  
  test "must have valid email" do
    u = User.new
    u.email = "new@gmail.com"
    assert u.save
  end
  
  test "must have email to be saved" do
    u = User.new
    assert !u.save
  end
  
  test "must not allow duplicate emails" do
    u1 = User.new
    u1.email = "johndoe@example.com"
    u1.save
    u2 = User.new
    u2.email = "johndoe@example.com"
    assert !u2.save
  end
end
