class QuestionsController < ApplicationController

  def answer
    @question = params[:user_type]
    @answer = coach_answer(@question)
  end

  def ask
  end

  def coach_answer(question)
    if question == ''
      "I don't care, get dressed and go to work!"
    elsif question[-1] == '?'
      'Silly question, get dressed and go to work!'
    elsif question == 'Hello'
      'Great!'
    end
  end
end
