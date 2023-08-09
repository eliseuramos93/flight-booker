class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @number_of_tickets = params[:number_of_tickets].to_i
    @flight = Flight.find(params[:flight_id].to_i)
    @number_of_tickets.times { @booking.passengers.build }
  end

  def create
    @flight = Flight.find(booking_params[:flight_id].to_i)
    @booking = @flight.bookings.build(booking_params)

    if @booking.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    def booking_params
      params.require(:booking).permit(:flight_id, 
          passengers_attributes: [:name, :email])
    end
end
