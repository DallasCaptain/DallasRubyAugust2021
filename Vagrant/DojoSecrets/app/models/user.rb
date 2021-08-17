class User < ActiveRecord::Base
  has_secure_password

  has_many :secrets
  has_many :likes
  has_many :secrets_liked, through: :likes, source: :secret
  
end
