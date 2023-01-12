class UsersController < ApplicationController
   skip_before_action :authorized, only: [:create]
rescue_from ActiveRecord::RecordInvalid, with: :unvalidated


  def create
    @user = User.create!(user_params)
      @token = encode_token(user_id: @user.id)
      render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
  end

  private

def unvalidated invalid
    render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
end

  def user_params
    params.permit(:username, :password, :email, :password_confirmation, :full_name)
  end
end
