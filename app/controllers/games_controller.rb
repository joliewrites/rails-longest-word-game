class GamesController < ApplicationController
  VOWELS = %w(A E I O U Y)
  def new
    @letters = Array.new(4) { VOWELS.sample }
    @letters += Array.new(4) { (('A'..'Z').to_a - VOWELS).sample }
  end

  def score
    @word = params[:word]
  end
end
