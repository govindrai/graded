class CreateTestResponses < ActiveRecord::Migration
  def change
    create_table :test_responses do |t|
      t.integer :selected_potential_answer_id, null:false
      t.references :question, null:false

      t.timestamps null:false
    end
  end
end
