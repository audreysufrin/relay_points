class RelayPoint < ApplicationRecord
  validates :name, :address, :hours, presence: true
end
