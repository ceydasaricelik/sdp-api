class Api::V1::QuestionsController < ApplicationController
  def index
    render json: Question.all
  end

  def show
    question = Question.find(params[:id])
    render json: question
  end

  def create
    question = Question.new(question_params)
    if question.save
      render json: question, status: :created
    else
      render json: question.errors, status: :unprocessable_entity
    end
  end

  def update
    question = Question.find(params[:id])
    if question.update(question_params)
      render json: question
    else
      render json: question.errors, status: :unprocessable_entity
    end
  end

  def destroy
    question = Question.find(params[:id])
    question.destroy
    render json: { message: "Question deleted successfully" }
  end

  private

  def question_params
    params.require(:question).permit(:scale_id, :content, :order)
  end
end
