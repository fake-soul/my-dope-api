class Api::V1::CityController < ApplicationController
  def index
    cities = City.all
    render json: cities, status: 200
  end

  def show
    city = City.find_by(id: params[:id])
    if city
      render json: city, status: 200
    else
      render json: {error: "city Not Found"}, status: 404
    end
  end

  def create
    city = City.new(
      name: prod_params[:name],
      country: prod_params[:country],
      lat: prod_params[:lat],
      long: prod_params[:long]
    )
    if city.save
      render json: city, status: 201
    else
      render json: {error: "Error in process request"}, status: 500
    end
  end

  private
  def prod_params
    params.require(:city).permit([:name, :country, :lat, :long])
  end
end
