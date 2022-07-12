class User < ApplicationRecord
  has_secure_token
  has_secure_password
  def invalidate_token
    update(token: nil)
  end
end
