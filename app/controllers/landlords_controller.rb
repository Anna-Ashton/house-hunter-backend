class LandlordsController < ApplicationController
     skip_before_action :authorized, only: [:create]
rescue_from ActiveRecord::RecordInvalid, with: :unvalidated


  def create
    @landlord = Landlord.create!(landlord_params)
      @token = encode_token(landlord_id: @landlord.id)
      render json: { landlord: LandlordSerializer.new(@landlord), jwt: @token }, status: :created
  end

  private

def unvalidated invalid
    render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
end

  def landlord_params
    params.permit(:full_name, :username, :password_digest, :email, :contacts, :caretaker_name)
  end
end
