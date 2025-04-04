
require_relative 'card'
require_relative 'deck'


class Turn
  attr_accessor :guess, :card
  def initialize(guess, card)
    @guess = guess
    @card = card
  end

  def correct?
    if guess.downcase == card.answer.downcase
      true
    else
      false
    end
  end

  def feedback
    if self.correct?
      "Correct"
    else
      "Incorrect"
    end
  end
end


