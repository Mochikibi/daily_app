class Todo < ApplicationRecord

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :state
  belongs_to :user

  with_options presence: true do
    validates :task
    validates :limit_time
    validates :state_id, numericality: { other_than: 1, message: 'を選択してください。' }
  end



end

