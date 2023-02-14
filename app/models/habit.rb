class Habit < ApplicationRecord
  belongs_to :user
  has_many :activities, through: :user 
end
