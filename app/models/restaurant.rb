class Restaurant < ApplicationRecord
  has_many :reviews

  validates :name, presence: true, length: { maximum: 2 }

  CATEGORIES = %w[Japanese Belgium Italian French Brazilian Chinese].freeze

  def average_rating
    return reviews.pluck(:rating).sum / reviews.length.to_i
  end
end
