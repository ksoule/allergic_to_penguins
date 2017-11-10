class CreateSurveys < ActiveRecord::Migration[5.1]
  def change
    create_table :surveys do |t|
      t.string :title, null: false
      t.integer :user_id

      t.timestamps
    end
  end
end
