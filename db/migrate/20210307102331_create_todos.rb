class CreateTodos < ActiveRecord::Migration[6.0]
  def change
    create_table :todos do |t|
      t.string :task, null: false
      t.integer :state_id, null:false
      t.date :limit_time
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
