class Activity < ApplicationRecord
  belongs_to :habit, dependent: :destroy
  belongs_to :user
end
