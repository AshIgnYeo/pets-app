class Pet < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :pet_type, presence: true

  scope :of_type, -> (kind) { where(pet_type: kind) }
end
