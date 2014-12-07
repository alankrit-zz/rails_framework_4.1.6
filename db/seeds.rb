# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


100.times do |i|
  d = Doctor.create!(first_name:  Faker::Name.first_name,
                     last_name:   Faker::Name.last_name,
                     age:         Faker::Number.number(2),
                     desc:        Faker::Lorem.paragraph,
                     random:      Faker::Lorem.paragraph)
  10.times do |k|
    c = d.clinics.create!(name: Faker::Company.name , services: Faker::Lorem.paragraph, desc: Faker::Lorem.paragraph)
    rand(2..6).times {|j| c.timings.create!(day: Date::DAYNAMES.sample, time: Faker::Number.digit) }
  end

end
