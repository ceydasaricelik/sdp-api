module Api
  module V1
    class HelloController < ApplicationController
      include ActionController::MimeResponds

      def index
        respond_to do |format|
          format.html { render html: "<h1>Hello Rails - SDP API is running!</h1>".html_safe }
          format.json { render json: { message: "Hello, SDP API is running!" } }
        end
      end
    end
  end
end
