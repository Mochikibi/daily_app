class ChangeDataTextToDiaries < ActiveRecord::Migration[6.0]
  def change
    change_column :diaries, :text, :text
  end
end
