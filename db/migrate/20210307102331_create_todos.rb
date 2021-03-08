class CreateTodos < ActiveRecord::Migration[6.0]
  def change
    create_table :todos do |t|
      t.string :task, null: false
      t.integer :state_id, null:false
      t.time :limit_time
      t.timestamps
    end
  end
end
