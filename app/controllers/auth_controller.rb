class AuthController < ApplicationController
    skip_before_action :authorized, only:[:create]

    def create
        landlord= Landlord.find_by(username: params[:username])

        if landlord && landlord.authenticate(params[:password])
            token = encode_token({landlord_id: landlord.id})
            render json: { landlord: landlord, token: token }, status: :accepted
        else
            render json: { errors: "Invalid username or password" }, status: :unauthorized
        end
    end


    # Destroy landlord auth
    def destroy
        head :no_content
    end
end
