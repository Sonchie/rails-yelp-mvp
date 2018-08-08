class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, presence: true
  validates :category, presence: true, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }
end


# restaurant must have at least:
# a name, an address and a category.
# restaurant category should belong to fixed list [
# "chinese", "italian", "japanese", "french", "belgian"]
