# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#a new teacher signs up (10 teachers)
Teacher.create(first_name: "Ronald", last_name: "Rubio", institution: "Dublin High School")
Teacher.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, institution: Faker::Educator.university)
Teacher.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, institution: Faker::Educator.university)
Teacher.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, institution: Faker::Educator.university)
Teacher.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, institution: Faker::Educator.university)
Teacher.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, institution: Faker::Educator.university)
Teacher.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, institution: Faker::Educator.university)
Teacher.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, institution: Faker::Educator.university)
Teacher.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, institution: Faker::Educator.university)
Teacher.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, institution: Faker::Educator.university)

#teacher adds a course
Teacher.find(1).courses.create(name: 'AP Politics & Government')
Teacher.find(2).courses.create(name: Faker::Educator.course)
Teacher.find(2).courses.create(name: Faker::Educator.course)
Teacher.find(3).courses.create(name: Faker::Educator.course)
Teacher.find(4).courses.create(name: Faker::Educator.course)
Teacher.find(5).courses.create(name: Faker::Educator.course)
Teacher.find(6).courses.create(name: Faker::Educator.course)
Teacher.find(7).courses.create(name: Faker::Educator.course)
Teacher.find(8).courses.create(name: Faker::Educator.course)
Teacher.find(9).courses.create(name: Faker::Educator.course)
Teacher.find(10).courses.create(name: Faker::Educator.course)

#student signs up
Student.create(first_name: "Govind", last_name: "Rai")
Student.create(first_name: "Jack", last_name: "Lawson")
Student.create(first_name: Faker::Name.first_name, last_name: Faker::Name.name)
Student.create(first_name: Faker::Name.first_name, last_name: Faker::Name.name)
Student.create(first_name: Faker::Name.first_name, last_name: Faker::Name.name)
Student.create(first_name: Faker::Name.first_name, last_name: Faker::Name.name)
Student.create(first_name: Faker::Name.first_name, last_name: Faker::Name.name)
Student.create(first_name: Faker::Name.first_name, last_name: Faker::Name.name)
Student.create(first_name: Faker::Name.first_name, last_name: Faker::Name.name)
Student.create(first_name: Faker::Name.first_name, last_name: Faker::Name.name)

#student enrolls in a course
Student.find(1).courses << Course.find(1)
Student.find(2).courses << Course.find(1)
Student.find(2).courses << Course.find(2)
Student.find(1).courses << Course.find(3)
Student.find(3).courses << Course.find(3)
Student.find(4).courses << Course.find(3)
Student.find(5).courses << Course.find(5)
Student.find(6).courses << Course.find(6)
Student.find(7).courses << Course.find(7)
Student.find(8).courses << Course.find(8)
Student.find(9).courses << Course.find(9)
Student.find(9).courses << Course.find(1)
Student.find(9).courses << Course.find(2)

#teachers create tests
Teacher.find(1).courses.first.tests.create(name:"Chapter 1: Gerrymandering")

