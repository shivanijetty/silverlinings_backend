class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email
  has_many :habits 
  has_many :activities

  
end
