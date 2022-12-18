class RootController < ApplicationController
  def index
    @questions = Question.all
  end
end
