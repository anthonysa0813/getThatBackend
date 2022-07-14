class PropertiesController < ApplicationController
  def index
    @properties = Property.all
    render json: @properties
  end
  
  def create
    @property = Property.new(
      operation_type: params[:operation_type],
      address: params[:address],
      montly_price: params[:montly_price],
      maintance: params[:maintance],
      property_type: params[:property_type],
      bedrooms_count: params[:bedrooms_count],
      bathroom_count: params[:bathroom_count],
      area: params[:area],
      pets_allowed: params[:pets_allowed],
      description: params[:description],
      photo: params[:photo],
      active_published: params[:active_published],
      user_id: params[:user_id],
    )
    if @property.save
      render json: @property
    else
      render json: {message: "Couldn't create"}
    end
  end
end
