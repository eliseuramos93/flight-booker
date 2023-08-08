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