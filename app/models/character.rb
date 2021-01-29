class Character < ApplicationRecord
  has_many :goals

  validates :name, presence: true
end
