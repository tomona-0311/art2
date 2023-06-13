class Display < ApplicationRecord
  has_one_attached :image
  validates :image, presence: true

has_many :posts
belongs_to :user,optional: true
end
