class PropertiesController < ApplicationController
  def create
    @property = Property.new({
      description: params[:description],
      user_id: params[:user_id],
      photo: params[:photo]
    })
    pp @property
    @property.save
    if @property.save
      render json: @property
    else
      render json: {message: "Couldn't save property"}
    end
  end
end