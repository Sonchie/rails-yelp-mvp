class Review < ApplicationRecord
  belongs_to :restaurant
end


# A review must have a parent restaurant.
# A review must have content and a rating.
# The rating should be a number between 0 and 5.
