class PassengerMailer < ApplicationMailer
  def confirmation_email
    @passenger = params[:user]
    @url = 'http://example.com/login'
    mail(to: @passenger.email, subject: 'Your booking has been confirmed')
  end
end
