class FlightsController < ApplicationController
  def index
    @flights = Flight.all
    @airport_options = Airport.all.map { |a| [ a.airport, a.id ] }
    @date_options = Flight.all.map { |f| [ f.flight_date, f.flight_date ] }.uniq
    @available_flights = Flight.where(from_airport: params[:from_airport_id],
                                      to_airport: params[:to_airport_id])
    @available_flights = @available_flights.map do |f|
      f if f.flight_date == params[:departure]
    end  
    @flights_options = @available_flights.map { |f| [ f.name, f.id ] } 
    @flight = Flight.first                                     
  end
end
