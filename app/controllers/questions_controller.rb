# frozen_string_literal: true

class QuestionsController < ApplicationController
  def index
    @questions = Question.all
    render :index
  end

  def show
    @question = Question.find(params[:id])
    render :show
  end

  def new
    @question = Question.new
    render :new
  end

  def edit
    @question = Question.find(params[:id])
    render :edit
  end

  def create
    @question = Question.new(params.require(:question).permit(:stem, :answer, :distractor_1, :distractor_2))

    if @question.save
      flash[:success] = 'This question was saved correctly'
      redirect_to question_url(@question)
    else
      flash.now[:error] = 'The question could not be saved'
      render :new, status: :unprocessable_content
    end
  end

  def update
    @question = Question.find(params[:id])

    if @question.update(params.require(:question).permit(:stem, :answer, :distractor_1, :distractor_2))
      flash[:success] = 'This question was updated correctly'
      redirect_to question_url(@quiz, @question)
    else
      flash.now[:error] = 'This question could not be updated'
      render :edit, status: :unprocessable_content
    end
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy!
    flash[:success] = 'Question was successfully removed'
    redirect_to questions_path, status: :see_other
  end
end
