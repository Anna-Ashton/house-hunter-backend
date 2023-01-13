class BookingsController < ApplicationController
    skip_before_action :authorized, only: [:index, :show, :create, :update, :destroy]
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
    wrap_parameters format: []
  
    def index
      bookings = Booking.all
      render json: bookings
    end
  
    def show
      booking = find_booking
      render json: booking
    end
  
    def create
      booking = Booking.create(booking_params)
      render json: booking, status: :created
    end
  
    def update
      booking = find_booking
      booking.update(booking_params)
      render json: booking
    end
  
    def destroy
      booking = find_booking
      booking.destroy
      head :no_content
    end
  
    private
  
    def find_booking
      Booking.find(params[:id])
    end
  
    def booking_params
      params.permit(:user_id, :house_id,:booking_date)
    end
  
    def render_not_found_response
      render json: { error: "Booking not found" }, status: :not_found
    end
end
