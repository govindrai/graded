class CreatePotentialAnswers < ActiveRecord::Migration
  def change
    create_table :potential_answers do |t|
      t.string :potential_answer_text, null:false
      t.references :question, null:false

      t.timestamps null:false
    end
  end
end
