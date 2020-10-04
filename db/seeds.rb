# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Airport.create([{ airport: 'SFO' }, { airport: 'NYC' }, { airport: 'BRA' }])

@flight = Flight.create([{ name: 'A1', departure: DateTime.new(2020,10,1,5,30),
                  duration: 4,
                  from_airport: Airport.find_by_airport('SFO'),
                  to_airport: Airport.find_by_airport('NYC') },
                  
                  { name: 'A2', departure: DateTime.new(2020,10,3,4,30),
                    duration: 8,
                    from_airport: Airport.find_by_airport('SFO'),
                    to_airport: Airport.find_by_airport('BRA') },

                  { name: 'A5', departure: DateTime.new(2020,10,3,12,30),
                    duration: 8,
                    from_airport: Airport.find_by_airport('SFO'),
                    to_airport: Airport.find_by_airport('BRA') },

                  { name: 'A4', departure: DateTime.new(2020,10,3,1,15),
                    duration: 11,
                    from_airport: Airport.find_by_airport('NYC'),
                    to_airport: Airport.find_by_airport('BRA') },
                    
                  { name: 'A3', departure: DateTime.new(2020,10,5,10),
                    duration: 12,
                    from_airport: Airport.find_by_airport('BRA'),
                    to_airport: Airport.find_by_airport('NYC') }])
