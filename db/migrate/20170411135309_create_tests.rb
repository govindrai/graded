class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.integer :test_name, null:false
      t.references :course, null:false
      # can add other fields such as, anytime, start time, end time, time-limit, duration, pass/no pass, etc.

      t.timestamps null:false
    end
  end
end
