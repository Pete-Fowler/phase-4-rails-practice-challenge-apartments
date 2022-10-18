class Apartment < ApplicationRecord
  has_many :leases, dependent: :destroy
  has_many :tenants, through: :leases
  validates :number, presence: true, numericality: { greater_than: 0, less_than: 99_999_999 }
end
