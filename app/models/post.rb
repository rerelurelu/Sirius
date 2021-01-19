class Post < ApplicationRecord

  belongs_to :author
  has_many :elements

  has_one_attached :header_image

  scope :published, -> do
    where(published: true )
  end

  scope :most_recently_published, -> do
    order(published_at: :desc)
  end
end
