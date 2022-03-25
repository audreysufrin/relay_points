class DeliveryCalendar < ApplicationRecord
  validates :user, :place_of_delivery, presence: true
  validates :user, uniqueness: true
end
