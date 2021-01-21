class Element < ApplicationRecord
  belongs_to :post

  validates :title, :description, :header_image, presence: true
  validates :element_type, inclusion: { in: ['paragraph', 'image', 'video-enbed'] }

  has_rich_text :content
  has_one_attached :image

  def paragraph?
    element_type == 'paragraph'
  end

  def image?
    element_type == 'image'
  end
end
