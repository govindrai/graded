class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :name, null: false
      t.references :course, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
