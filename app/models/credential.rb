class Credential < ApplicationRecord
  validates :institution, presence: true
  validates :number, presence: true
end
