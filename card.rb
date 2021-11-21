class Card
  attr_reader :name, :suit, :cost

  def initialize(name, suit)
    @name = name
    @suit = suit
    @cost = set_cost
  end

  private

  def set_cost
    if name == "Ace" then
      11
    elsif (2..10).include?(name.to_i) then
      name.to_i
    else
      10
    end
  end
end