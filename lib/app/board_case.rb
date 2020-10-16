# board_case.rb du jeu de morpion
# cette classe correspondant aux cases du jeu, définies par leur position (de A1 à C3) 
# ainsi que leur contenu (" ", "X" ou "O")


#require 'pry'

class Board_Case
	attr_accessor :position, :content, :status

	def initialize(given_position, current_content)
		@position = given_position.to_s # position qui sera définie de 0 à 8
		@content = current_content.to_s  # contenu qui sera définie soit comme vide, ou avec le symbole de l'un des joueurs
		@status = true # statut initié à vide=true (déjà coché=false)
	end

	def show_board_case # permet d'afficher le contenu d'une case à un moment donné
		puts "La case #{@position} a le contenu #{content}"
	end

	def fill_player1
		@content = "X"
	end

	def fill_player2
		@content = "O"
	end

	def status_board_case
		if @content == " " 
			then @status = true
		else
			@status = false
		end
	end


end

#binding.pry
#puts "end of file"
