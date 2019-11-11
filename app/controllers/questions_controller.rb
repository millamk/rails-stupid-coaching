# frozen_string_literal: true

class QuestionsController < ApplicationController
  # def ask
  # end

  def answer
    @message = params[:question]

    @answer = if @message == 'I am going to work'
                'Great!'
              elsif @message.include? '?'
                'Silly question, get dressed and go to work!'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
