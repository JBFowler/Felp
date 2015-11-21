# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

state_list = [
  "Alabama", "Alaska", "Arizona", "Arkansas", "California", "Colorado", "Connecticut", "Delaware", "Florida", "Georgia", "Hawaii", "Idaho", "Illinois", "Indiana",
  "Iowa", "Kansas", "Kentucky", "Louisiana", "Maine", "Maryland", "Massachuseets", "Michigan", "Minnesota", "Mississippi", "Missouri", "Montana", "Nebraska",
  "Nevada", "New Hampshire", "New Jersey", "New Mexico", "New York", "North Carolina", "North Dakota", "Ohio", "Oklahoma", "Oregon", "Pennsylvania", 
  "Rhode Island", "South Carolina", "South Dakota", "Tennessee", "Texas", "Utah", "Vermont", "Virginia", "Washington", "West Virginia", "Wisconson", "Wyoming"
]

city_list = [
  "Birmingham", "New York", "San Francisco", "Green Bay", "Houston", "Austin", "Atlanta"
]

state_list.each do |state|
  State.create!(name: state)
end

city_list.each do |city|
  City.create!(name: city, state_id: State.pluck(:id).sample)
end

10.times do
  Business.create!(name: Faker::Company.name, description: Faker::Lorem.sentence(3), city_id: City.pluck(:id).sample, state_id: State.pluck(:id).sample, image: ["/tmp/Food1.jpg", "/tmp/golf_course1.jpg", "/tmp/movie1.jpg"].sample)
end