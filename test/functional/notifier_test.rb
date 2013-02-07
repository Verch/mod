require 'test_helper'

class NotifierTest < ActionMailer::TestCase
  test "registration" do
    mail = Notifier.registration
    assert_equal "Registration", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "order_processed" do
    mail = Notifier.order_processed
    assert_equal "Order processed", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
