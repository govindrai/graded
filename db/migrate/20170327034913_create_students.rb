class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :institution
      t.string :email
      t.string :password
      t.timestamps null: false
    end
  end
end
