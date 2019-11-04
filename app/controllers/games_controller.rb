class GamesController < ApplicationController
  def new
    @letters = ('A'..'Z').to_a.sample(10)
  end

  def score
    @key = params[:word]
    #state the conbditions here
    response = RestClient.get"url#{key}"
    @score = JSON.parse(response)

  end
end
