# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

airport = Airport.create([
  {name: 'Aeroporto Santos Dumont (RJ)', code: 'SDU'},
  {name: 'Aeroporto Tom Jobim/Galeão (RJ)', code: 'GIG'},
  {name: 'Aeroporto de Congonhas (SP)', code: 'CGH'},
  {name: 'Aeroporto Internacional de Guarulhos (SP)', code: 'GRU'}
])

flights = 999.times do |flight|
  takeoff_datetime = rand(1.month).seconds.from_now
  duration = rand 3600..14400
  departure_airport_id = rand 1..4
  arrival_airport_id = rand 1..4
  passenger_list = []
  
  Flight.create(
    takeoff: takeoff_datetime, 
    duration: duration, 
    departure_airport_id: departure_airport_id,
    arrival_airport_id: arrival_airport_id,
  )
end