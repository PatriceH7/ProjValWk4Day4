# board.rb du jeu de morpion
# cette classe correspondant au plateau de jeu

#require 'pry'


class Board
	attr_accessor :full_board

	def initialize(current_board)
		@full_board = current_board.to_a # array de 9 objets de classe Board_case
	end


	def show_board # permet d'afficher le contenu du plateau à un moment donné		
		display_A1 = @full_board[0].content
		display_A2 = @full_board[1].content
		display_A3 = @full_board[2].content
		display_B1 = @full_board[3].content
		display_B2 = @full_board[4].content
		display_B3 = @full_board[5].content
		display_C1 = @full_board[6].content
		display_C2 = @full_board[7].content
		display_C3 = @full_board[8].content

#		puts "Voici l'état actuel du plateau :"
		puts "    1   2   3"
		puts "  " + "-" * 13
		puts "A | #{display_A1} | #{display_A2} | #{display_A3} |"
		puts "  " + "-" * 13
		puts "B | #{display_B1} | #{display_B2} | #{display_B3} |"
		puts "  " + "-" * 13
		puts "C | #{display_C1} | #{display_C2} | #{display_C3} |"
		puts "  " + "-" * 13
		puts
	end

	def check_victory
	end







end

#binding.pry
#puts "end of file"



