class DeliveryCalendar < ApplicationRecord
  validates :user, :place_of_delivery, :hours_available, presence: true
  validates :user, uniqueness: true
end
