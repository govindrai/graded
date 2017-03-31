class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name, null: false
      t.references :teacher, index: true, foreign_key: true
      t.string :secret_key
      t.text :course_description
      t.timestamps null: false
    end
  end
end
