class ApplicationController < ActionController::API
    
    before_action :authorized

    def encode_token(payload)
        JWT.encode(payload, 'secret')
    end

    def auth_header
        request.headers["Authorization"]
    end

    def decoded_token
        if auth_header
            token = auth_header.split(' ')[1]
            begin
                JWT.decode(token, 'secret', true, algorithm: 'HS256')
            rescue JWT::DecodeError
                nil  
            end              
        end
    end


    def current_user
        if decoded_token
            landlord_id = decoded_token[0]['landlord_id']
            landlord = Landlord.find_by(id: landlord_id)
        end
    end

        def logged_in?
        !!current_user
        end

        def authorized
        render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
        end
    end
