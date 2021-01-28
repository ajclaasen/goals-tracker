class Goal < ApplicationRecord
  belongs_to :character

  validates :text, presence: true
end
