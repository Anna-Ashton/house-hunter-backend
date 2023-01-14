class HousesController < ApplicationController
  skip_before_action :authorized, only: [:index, :show, :create]
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
  wrap_parameters format: []

  def index
    houses = House.all
    render json: houses
  end

  def show
    house = find_house
    render json: house
  end

  def create
    house = House.create(house_params)
    render json: house, status: :created
  end

  def update
    house = find_house
    house.update(house_params)
    render json: house
  end

  def destroy
    house = find_house
    house.destroy
    head :no_content
  end

  private

  def find_house
    House.find(params[:id])
  end

  def house_params
    params.permit(:estate_name, :img_url, :price, :user_id, :landlord_id, :location, :description, :house_type, :bedrooms)
  end

  def render_not_found_response
    render json: { error: "House not found" }, status: :not_found
  end

  def render_unprocessable_entity_response(invalid)
    render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
  end
end
