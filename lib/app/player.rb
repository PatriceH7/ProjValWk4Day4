# classe du joueur
#require 'pry'

class Player
	attr_accessor :name, :symbol

	def initialize(name_to_save, symbol_to_save)
		@name = name_to_save.to_s
		@symbol = symbol_to_save.to_s
	end

	def show_state
		puts "#{@name} est le joueur utilisant le symbole #{@symbol}"
	end
end

#binding.pry
#puts "end of file"


