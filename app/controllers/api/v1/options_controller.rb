module Api
  module V1
    class OptionsController < ApplicationController
      before_action :set_option, only: [:show, :update, :destroy]

      # GET /api/v1/options
      def index
        @options = Option.all
        render json: @options
      end

      # GET /api/v1/options/:id
      def show
        render json: @option
      end

      # POST /api/v1/options
      def create
        @option = Option.new(option_params)
        if @option.save
          render json: @option, status: :created
        else
          render json: @option.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /api/v1/options/:id
      def update
        if @option.update(option_params)
          render json: @option
        else
          render json: @option.errors, status: :unprocessable_entity
        end
      end

      # DELETE /api/v1/options/:id
      def destroy
        @option.destroy
        render json: { message: "Option deleted successfully" }
      end

      private

      def set_option
        @option = Option.find(params[:id])
      end

      def option_params
        params.require(:option).permit(:question_id, :text, :value)
      end
    end
  end
end
