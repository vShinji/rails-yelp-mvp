class Restaurant < ApplicationRecord
  has_many :reviews, :dependent => :destroy
  CATEGORY = %w[chinese italian japanese french belgian bras burger]

  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: CATEGORY }
end
