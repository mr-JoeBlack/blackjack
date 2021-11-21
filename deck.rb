require_relative 'card'

class Deck
	@names = %w( 2 3 4 5 6 7 8 9 10 Jack Queen King Joker Ace )
	@suits = %w( spades clubs hearts diamonds )

	class << self
		attr_reader :names, :suits
	end

	attr_reader :cards

	def initialize
		@cards = []

		self.class.names.each do |name|
			self.class.suits.each do |suit|
				@cards << Card.new( name, suit )
			end
		end

		@cards.shuffle!
	end
end
