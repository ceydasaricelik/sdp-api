# app/controllers/api/v1/auth_controller.rb
module Api
  module V1
    class AuthController < ApplicationController
      require 'jwt'

      def google
        id_token = params[:id_token]
        return render json: { error: 'Missing token' }, status: :unauthorized unless id_token.present?

        # Not: Burada gerçek Google doğrulaması eklenebilir. Şimdilik demo user:
        user = User.find_or_create_by(email: "demo@sdp.com") do |u|
          u.name = "Demo User"
        end

        payload = { user_id: user.id, exp: 7.days.from_now.to_i }
        secret  = Rails.application.secret_key_base
        token   = JWT.encode(payload, secret, 'HS256')

        render json: { token: token, user: user }, status: :ok
      end
    end
  end
end
