class FlightsController < ApplicationController
  def index
    # search for flights
    @flights = Flight.all
    @airport_options = Airport.all
      .map { |air| [air.name, air.id] }
    @flight_dates = Flight.all
      .select(:takeoff)
      .order(takeoff: :asc)
      .map { |f| f.takeoff_formatted }
      .uniq

    # display the flights found on the search
    unless params[:travel_date].nil?
      @searched_flights = Flight
        .where("departure_airport_id = ?", params[:departing_airport_id])
        .where("arrival_airport_id = ?", params[:arrival_airport_id])
        .where("DATE(takeoff) = ?", Date.strptime(params[:travel_date], "%m/%d/%Y"))
    end
  end
end
