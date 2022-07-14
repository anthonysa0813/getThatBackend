class PropertiesController < ApplicationController
  def create
    puts "======================"
    property = Property.new({
      description: params[:description],
      user_id: params[:user_id],
      photo: params[:photo]
    })
    pp property
    puts "======================"

    property.save
    if property.save
      render json: property
    else
      render json: {message: "Couldn't save property"}
    end
  end
  private
  def property_params
    params.require(:property).permit(:operation_type, :address, :montly_price, :maintance, :property_type, :bedrooms_count, :bathroom_count, :area, :pets_allow, :description, :active, :user_id)
  end
end 