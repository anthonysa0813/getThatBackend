class PropertyPubSerializer
  include JSONAPI::Serializer
  attributes :operation_type, :address, :montly_price, :maintance, :property_type, :bedrooms_count, :bathroom_count, :area, :pets_allow, :description, :photo, :active, :user
end
