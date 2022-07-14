class User < ApplicationRecord
  has_secure_token
  has_secure_password
  has_many :favorites
  has_many :properties, through: :favorites
  def invalidate_token
    update(token: nil)
  end
end
