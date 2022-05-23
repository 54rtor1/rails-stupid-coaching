class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = params[:answer]
    @msg1 = "Great"
    @msg2 = "Silly question, get dressed and go to work!"
    @msg3 = "I don't care, get dressed and go to work!"
    if @answer == "i am going to work right now!"
      return @msg1
    elsif @answer.end_with?('?')
      return @msg2
    else
      return @msg3
    end
  end
end
