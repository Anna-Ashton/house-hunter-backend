class LandlordsController < ApplicationController
    skip_before_action :authorized, only: [:create, :index]
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

      def index
        landlord = Landlord.find_by(current_user)
        render json: landlord
      end

    #   def show
    #     landlord = find_landlord
    #     render json: landlord
    #   end

      def create
        landlord = Landlord.create!(landlord_params)
        render json: landlord, status: :created
      end
    

      def update
        landlord = Landlord.find(params[:id])
        landlord.update!(landlord_params)
        render json: landlord, status: :created
      end


      def destroy
        landlord = Landlord.find(params[:id])
        landlord.destroy
        head :no_content
      end

      private
      def find_landlord
        Landlord.find(params[:id])
      end

      def landlord_params
        params.permit(:full_name, :username, :email, :caretaker_name,:contacts, :password, :password_confirmation)
      end


      def render_not_found_response
        render json: {error: "Landlord not found"}, status: :unprocessable_entity
      end
end
