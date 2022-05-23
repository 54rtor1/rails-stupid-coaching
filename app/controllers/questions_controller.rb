class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = params[:question]
    if @answer == "I am going to work"
      @msg = "Great!"
    elsif @answer.end_with?('?')
      @msg = "Silly question, get dressed and go to work!"
    else
      @msg = "I don't care, get dressed and go to work!"
    end
  end
end
