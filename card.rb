class Card
  class ParameterError < StandardError; end
  include Comparable
  attr_accessor :value
  MARKS   = %w[♤ ♢ ♡ ♧].freeze
  NUMBERS = %w[8 9 10 J Q K A].freeze
  JOCKER_VALUE = MARKS.size * NUMBERS.size
  # MEMO: JOCKER2枚のvalue値は一緒ではない
  LISTS = (0..JOCKER_VALUE).to_a << (JOCKER_VALUE + 1)

  def initialize(value:)
    @value = value
  end

  def self.drow(cards)
    value = (LISTS - cards.map(&:value)).sample
    new(value: value)
  end

  def jocker?
    @value >= JOCKER_VALUE
  end

  def <=>(other)
    @value - other.value
  end

  def number_value
    @value / MARKS.size
  end

  def number
    NUMBERS[number_value]
  end

  def mark_value
    @value % MARKS.size
  end

  def mark
    MARKS[mark_value]
  end

  def to_s
    return "JO" if jocker?
    "#{mark} #{number}"
  end
end
