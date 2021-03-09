class Todo < ApplicationRecord

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :state
  validates :state_id, numericality: { other_than: 1 } 
  belongs_to :user

end

