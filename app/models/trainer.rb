class Trainer < ApplicationRecord
  has_many :workouts 
  has_many :users, through: :workouts  
  has_many :credentials

  scope :went_to_harvard, -> { joins(:credentials).where(credentials: {institution: 'Harvard'}) }

  validates :name, presence: true
end
