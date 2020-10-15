# classe correspondant au plateau de jeu
=begin
require 'pry'



class Board
	attr_accessor :complete_board

	def initialize(current_board)
		@complete_board = current_board.to_a # array de 9 cases
		a1 = Board_Case.new("A1", nil)
		a2 = Board_Case.new("A2", nil)
		a3 = Board_Case.new("A3", nil)
		b1 = Board_Case.new("B1", nil)
		b2 = Board_Case.new("B2", nil)
		b3 = Board_Case.new("B3", nil)
		c1 = Board_Case.new("C1", nil)
		c2 = Board_Case.new("C2", nil)
		c3 = Board_Case.new("C3", nil)
		board = []

#		@number_of_plays = current_number_of_plays.to_i option 


	end


	def show_board # permet d'afficher le contenu du plateau à un moment donné
		@complete_board.each


		display_A1 = @complete_board[0].content
		display_A2 = @complete_board[1].content
		display_A3 = @complete_board[2].content
		display_B1 = @complete_board[3].content
		display_B2 = @complete_board[4].content
		display_B3 = @complete_board[5].content
		display_C1 = @complete_board[6].content
		display_C2 = @complete_board[7].content
		display_C3 = @complete_board[8].content

		puts "Voici l'état actuel du plateau :"
		puts "-" * 13
		puts "| #{display1} | #{display2} | #{display3} |"
		puts "-" * 13
		puts "| #{display4} | #{display5} | #{display6} |"
		puts "-" * 13
		puts "| #{display7} | #{display8} | #{display9} |"
		puts "-" * 13
		puts
	end
end

binding.pry
puts "end of file"

=end


