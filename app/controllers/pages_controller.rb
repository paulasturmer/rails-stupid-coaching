# frozen_string_literal: true

class PagesController < ApplicationController
  def ask
  end

  def answer
    @question = []
    if params[:question]
      @question = @question.select { |quest| quest.starts_with?(params[:question]) }
    end

    if @question == 'I am going to work'
      @answer = 'Great!'
    elsif @question[-1] == '?'
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don\'t care, get dressed and go to work!"
    end
  end
end
