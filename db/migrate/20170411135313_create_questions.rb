class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question_text, null:false
      t.integer :correct_potential_answer_id, null:false
      t.references :test, null:false

      t.timestamps null:false
    end
  end
end
