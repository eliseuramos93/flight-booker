class FlightsController < ApplicationController
  def index
    @flights = Flight.all
    @airport_options = Airport.all
      .map { |air| [air.name, air.id] }
    @flight_dates = Flight.all
      .select(:takeoff)
      .order(takeoff: :asc)
      .map { |f| f.takeoff_formatted }
      .uniq
  end
end
