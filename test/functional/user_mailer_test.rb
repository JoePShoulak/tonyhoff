require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "subscribe_success" do
    mail = UserMailer.subscribe_success
    assert_equal "Subscribe success", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
