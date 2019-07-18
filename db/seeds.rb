# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

School.find_or_create_by!(name: "Flatiron School", address: "11 Broadway")
School.find_or_create_by!(name: "NYU", address: "New York, NY 10003")
School.find_or_create_by!(name: "John Jay", address: "524 W 59th St, New York, NY 10019")
School.find_or_create_by!(name: "City College", address: "160 Convent Ave, New York, NY 10031")
School.find_or_create_by!(name: "Columbia University", address: "116th St & Broadway, New York, NY 10027")

Student.find_or_create_by!(name: "Philip Smalls", age: 26, school_id: 1)
Student.find_or_create_by!(name: "Yosef Lehrer", age: 21, school_id: 5)
Student.find_or_create_by!(name: "Ben Braunstein", age: 23, school_id: 4)
Student.find_or_create_by!(name: "Yana Loginova", age: 31, school_id: 2)
Student.find_or_create_by!(name: "Baker Bake", age: 19, school_id: 3)
Student.find_or_create_by!(name: "Faker Fake", age: 48, school_id: 2)
