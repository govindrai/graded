class Course < ActiveRecord::Base
  belongs_to :teacher, class_name: User
  has_many :tests
  has_many :course_enrollments
  has_many :students, through: :course_enrollments
end
