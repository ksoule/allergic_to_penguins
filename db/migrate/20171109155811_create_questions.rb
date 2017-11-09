class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :test, null: false
      t.integer :creator_id

      t.timestamps
    end
  end
end
