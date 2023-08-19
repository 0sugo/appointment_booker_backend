module Api
  module V1
    class SessionsController < Devise::SessionsController
      skip_before_action :verify_authenticity_token, if: :json_request?

      respond_to :json

      def create
        user = User.find_by(email: session_params[:email])
      
        if user && user.valid_password?(session_params[:password])
          render json: { message: 'Login successful.', user_id: user.id, user_name: user.name }
        else
          render json: { message: 'Invalid email or password.' }, status: :unprocessable_entity
        end
      end
      

      def destroy
        # If you decide to implement token-based authentication, handle logout accordingly.
        # This might involve revoking or expiring the token.
        render json: { message: 'Logout successful.' }
      end

      private

      def session_params
        params.require(:user).permit(:email, :password)
      end

      protected

      def json_request?
        request.format.json?
      end
    end
  end
end


