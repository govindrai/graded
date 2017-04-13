require 'bcrypt'

class User < ActiveRecord::Base
  include BCrypt
  has_many :teaching_courses, class_name: Course, foreign_key: :teacher_id #returns course objects
  has_many :course_enrollments, foreign_key: :student_id #returns course_enrollment objects
  has_many :taking_courses, through: :course_enrollments, source: :course #return course objects
  has_many :teachers, through: :taking_courses
  has_many :students, through: :teaching_courses

  validates :first_name, :last_name, :email, :institution, :password, :user_type, presence: true
  validates :password, confirmation: true
  validates :password_confirmation, presence: true
  validates :email, uniqueness: true
  validates :user_type, inclusion: {in: %w(Student Teacher), message: "%{value} is not a valid user_type" }

  def authenticate(input_password)
    self.password == input_password
  end

  def password
    @password ||= Password.new(self.password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
end


