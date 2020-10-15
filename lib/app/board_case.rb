# classe correspondant aux cases du jeu, définies par leur position (de A1 à C3) et leur contenu (vide, X ou O)

class Board_Case
	attr_accessor :position, :content

	def initialize(given_position, current_content)
		@position = given_position.to_s # position qui sera définie de 0 à 8
		@content = current_content.to_s  # contenu qui sera définie soit comme vide, ou avec le symbole de l'un des joueurs
	end

	def show_board_case # permet d'afficher le contenu d'une case à un moment donné
		puts "La case #{@position} a le contenu #{content}"
	end


end
