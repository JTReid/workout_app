class Workout < ApplicationRecord
  belongs_to :user
  belongs_to :trainer

  has_and_belongs_to_many :exercises
end
