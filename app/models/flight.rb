class Flight < ApplicationRecord
  belongs_to :from_airport, class_name: "Airport"#, foreign_key: :departing_flight_id
  belongs_to :to_airport, class_name: "Airport"#, foreign_key: :arriving_flight_id
  has_many :bookings, dependent: :destroy

  def flight_date
    departure.strftime("%m/%d/%Y")
  end
end
