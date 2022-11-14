class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params['question']
    @answer = "I don't care, get dressed and go to work!"
    @answer = 'Great!' if @question == 'I am going to work'
    @answer = 'Silly question, get dressed and go to work!' if @question.include?('?')
  end
end
