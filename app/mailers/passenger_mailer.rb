class PassengerMailer < ApplicationMailer
  def confirmation_email
    @passenger = params[:user]
    @url = "localhost:3000/bookings/#{@passenger.id}"
    mail(to: @passenger.email, subject: 'Your booking has been confirmed')
  end
end
