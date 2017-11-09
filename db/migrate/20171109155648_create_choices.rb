class CreateChoices < ActiveRecord::Migration[5.1]
  def change
    create_table :choices do |t|
      t.integer :responder_id
      t.integer :answer_id

      t.timestamps
    end
  end
end
