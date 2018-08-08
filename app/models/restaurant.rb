class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, :category, presence: true
end


# restaurant must have at least:
# a name, an address and a category.
