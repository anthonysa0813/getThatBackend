class PostSerializer
  include JSONAPI::Serializer
  attributes :operation_type, :address, :montly_price, :maintance, :property_type, :bedrooms_count, :bathroom_count, :area, :pets_allow, :description, :active, :user, :image, :created_at, :updated_at, :image_url
end
