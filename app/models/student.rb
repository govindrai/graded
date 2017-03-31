class Student < ActiveRecord::Base
  # has_many :teachers, through: :enrollment  ##unnecessary since we don't care about the teachers a student has, only the courses
  has_many :enrollments
  has_many :courses, through: :enrollments
end
