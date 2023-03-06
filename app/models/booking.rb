class Booking < ApplicationRecord
  belongs_to :plant
  belongs_to :user

  def pending?
    status == 'pending'
  end
end
