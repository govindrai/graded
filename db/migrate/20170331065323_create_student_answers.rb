class CreateStudentAnswers < ActiveRecord::Migration
  def change
    create_table :student_answers do |t|
      t.references :student, index: true, foreign_key: true
      t.references :answer, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
