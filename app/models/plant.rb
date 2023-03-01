class Plant < ApplicationRecord
  belongs_to :user
  validates :size, inclusion: { in: %w(small medium large),
    message: "%{value} is not a valid size" }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
