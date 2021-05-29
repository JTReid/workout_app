class Exercise < ApplicationRecord
  has_and_belongs_to_many :workouts

  # def self.list_for_user(user)
  #   joins(:workouts)
  #     .where(workouts: { id: user.workouts.pluck(:id) })
  #     .pluck(:name).uniq
  # end
end
