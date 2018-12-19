require_relative "card"

class Deck
  MAX_CARD = 5
  attr_accessor :cards

  def initialize
    @cards ||= []
  end

  def add_cards
    (MAX_CARD - @cards.count).times do
      @cards << Card.drow(cards)
    end
    @cards.sort!
    to_s
  end

  def changes(*indexes)
    Array(indexes).sort.reverse_each do |i|
      @cards.delete_at(i)
    end
    add_cards
  end

  def to_s
    @cards.sort.map(&:to_s)
  end
end
