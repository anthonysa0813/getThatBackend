class Property < ApplicationRecord
  belongs_to :user
  # has_one_attached :photo
  has_many :favorites
  has_many :users, through: :favorites

  # def image_url
  #   Rails.application.routes.url_helpers.url_for(photo) if photo.attached?
  # end

  
end
