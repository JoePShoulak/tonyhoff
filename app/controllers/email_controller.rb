class EmailController < ApplicationController
  http_basic_authenticate_with name: 'Preston Gunderson', password: 'GreenRecluse'

  def compose
  end

  def deliver
    subject = params[:subject]
    message = params[:message]
    if subject.length * message.length == 0
      flash[:notice] = 'Email must have both subject and message.'
    else
      redirect_to '/email'
      flash[:notice] = 'Sending Emails...'
      User.all.each do |u|
        UserMailer.update(u, subject, message).deliver
      end
    end
  end

  def index
  end
end
