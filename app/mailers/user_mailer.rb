class UserMailer < ActionMailer::Base
  default from: 'Prestongundersonemaillist@gmail.com'

  def update(user, subject, message)
    @message = message
    @user = user
    address = user.email
    mail to: address, subject: subject
  end
end
