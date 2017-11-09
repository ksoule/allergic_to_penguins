class CreatePossibleAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :possible_answers  do |t|
      t.string :text, null: false
      t.integer :question_id

      t.timestamps
    end
  end
end
