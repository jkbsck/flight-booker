class BookingsController < ApplicationController
  def new
    @booking = Booking.new#(params)
    @flight = Flight.find(params[:flight_id])
    params[:passengers].to_i.times { @booking.passengers.build }
    #3.times do
    #  @booking.passengers.build
    #end
  end

  def create
    @booking = Booking.new(booking_params)
    #@flight = Flight.find(params[:flight_id])
    # probably will has to be params[:booking][:passengers]
    #params[:booking][:passengers].to_i.times do
      #@booking.passengers.build(booking_params)
    #end
    if @booking.save
      @booking.passengers.each { |p| p.save }
      redirect_to booking_path(@booking), notice: 'Booking saved.' +
      "#{@booking.passengers.all.count}"
    else
      #render :new, notice: "Failed to create event!"
      #flash.now[:danger] = @booking.errors.full_messages
      flash.now[:alert] = @booking.errors.full_messages
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def index
    @bookings = Booking.all
  end

  private
    def booking_params
      params.require(:booking).permit(:flight_id,
        passengers_attributes: [:name, :email])
    end
end
