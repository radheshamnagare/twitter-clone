class Tweet < ApplicationRecord
  has_one_attached :image,dependent: :destroy
  validates :title,:about,:description,presence: true
  validates :image, attached: true,
                    content_type: ['image/png', 'image/jpeg']
  belongs_to :user
  
end
