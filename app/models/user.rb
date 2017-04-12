class User < ActiveRecord::Base
  has_many :teaching_courses, class_name: Course, foreign_key: :teacher_id
  has_many :course_enrollments, foreign_key: :student_id
  has_many :taking_courses, through: :course_enrollments, source: :course #return course objects
  has_many :teachers, through: :taking_courses
end


