module Api
  module V1
    class ScalesController < ApplicationController
      # GET /api/v1/scales
      def index
        scales = Scale.all
        render json: scales
      end

      # GET /api/v1/scales/:id
      def show
        scale = Scale.find(params[:id])
        render json: scale
      rescue ActiveRecord::RecordNotFound
        render json: { error: "Scale not found" }, status: :not_found
      end

      # POST /api/v1/scales
      def create
        scale = Scale.new(scale_params)
        if scale.save
          render json: scale, status: :created
        else
          render json: scale.errors, status: :unprocessable_entity
        end
      end

      # PUT /api/v1/scales/:id
      def update
        scale = Scale.find(params[:id])
        if scale.update(scale_params)
          render json: scale
        else
          render json: scale.errors, status: :unprocessable_entity
        end
      rescue ActiveRecord::RecordNotFound
        render json: { error: "Scale not found" }, status: :not_found
      end

      # DELETE /api/v1/scales/:id
      def destroy
        scale = Scale.find(params[:id])
        scale.destroy
        render json: { message: "Scale deleted successfully" }
      rescue ActiveRecord::RecordNotFound
        render json: { error: "Scale not found" }, status: :not_found
      end

      private

      def scale_params
        params.require(:scale).permit(:title, :description, :category)
      end
    end
  end
end
