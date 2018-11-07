require 'test_helper'

class NotificacionMailerTest < ActionMailer::TestCase
  test "nueva_cuenta" do
    mail = NotificacionMailer.nueva_cuenta
    assert_equal "Nueva cuenta", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
