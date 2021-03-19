class CreateDiaries < ActiveRecord::Migration[6.0]
  def change
    create_table :diaries do |t|
      t.string :text, null: false
      t.date :day, null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
