# Preview all emails at http://localhost:3000/rails/mailers/passenger_mailer
class PassengerMailerPreview < ActionMailer::Preview
  def confirmation_email
    PassengerMailer.with(user: Passenger.first).confirmation_email
  end
end
