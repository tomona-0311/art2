class Display < ApplicationRecord
  has_one_attached :image

  has_many :posts
  belongs_to :user, optional: true
end
