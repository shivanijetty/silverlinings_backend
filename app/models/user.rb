class User < ApplicationRecord
  has_secure_password
  has_many :activities
  has_many :habits, through: :activities
  
end
