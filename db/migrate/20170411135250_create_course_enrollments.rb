class CreateCourseEnrollments < ActiveRecord::Migration
  def change
    create_table :course_enrollments do |t|
      t.references :course
      t.integer :student_id

      t.timestamps null:false
    end
  end
end
