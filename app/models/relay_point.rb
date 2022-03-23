class RelayPoint < ApplicationRecord
  validates :name, :address, :hours, presence: true
  validates :name, uniqueness: true
end
