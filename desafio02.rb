require_relative 'carta.rb'

class Deck
    attr_reader :cards
    def initialize
        # @card = (1..13).map {|num| %w[C D E T].map {|kind| Card.new(num, kind)}}
        # .flatten
        @cards = []
        (1..13).each do |num|
            %w[C D E T].each do |kind|
                @cards << Card.new(num, kind)
            end
        end
    end

    def shuffles # Metodo para desordenar el arreglo
        self.cards.shuffle
    end

    def draw #Metodo para sacar la ultima carta
        self.cards.pop
    end

    def initial_draw
        self.cards.pop(5)
    end
end

cards = Deck.new

pp cards.shuffles
pp "-------------"
pp cards.draw
pp "-------------"
pp cards.initial_draw