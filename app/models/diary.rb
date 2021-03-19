class Diary < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  validates :text_or_image, presence: true
  validates :day, presence:true

  def self.search(search)
    if search != ""
      Diary.where(day: search)
    else
      Diary.all
    end
  end

private
    def text_or_image
      text.presence or image.presence
    end
end

