# game.rb du jeu de morpion

class Game
	attr_accessor :players, :board

	def initialize(current_players, current_board)
		@players = current_players.to_a
		@board = current_board.to_a 
	end

	def launch_game	#lance le jeu avec les joueurs donnés, et le plateau initialement vide
	puts "La partie oppose #{@players[0].name} (qui joue avec les X) et #{@players[1].name} (qui joue donc avec les O)"
	
	a1 = Board_Case.new("A1", " ") # initialise toutes les cases avant de démarrer
	a2 = Board_Case.new("A2", " ")
	a3 = Board_Case.new("A3", " ")
	b1 = Board_Case.new("B1", " ")
	b2 = Board_Case.new("B2", " ")
	b3 = Board_Case.new("B3", " ")
	c1 = Board_Case.new("C1", " ")
	c2 = Board_Case.new("C2", " ")
	c3 = Board_Case.new("C3", " ")

	initial_board = Board.new([a1, a2, a3, b1, b2, b3, c1, c2, c3]) # définit le plateau initial 
	initial_board.show_board # affiche le plateau initial
	board_before_play = initial_board
#	end	
  puts "now we try to simulate player1 playing in A1"  # utilisé pour confirmer le remplissage d'une case
  a1.fill_player1
  new_board = initial_board
  new_board.show_board

  puts "now we try to simulate player2 playing in C1"  # utilisé pour confirmer le remplissage d'une case
  c1.fill_player2
  new_board.show_board


#	def performs_one_round
	#	check_input = false # variable correspondant à la validité de l'entrée
	#	while check_input == false do # boucle permettant de garantir l'entrée d'un choix cohérent

		  puts "#{@players[0].name}, c'est à vous de jouer maintenant."
		  puts "Merci de rentrer la case choisie, suivant le format A1, B2, C3, etc.... :"
		  input_play_player1 = gets.chomp.to_i


		  board_before_play.each do |case_review|
			 if input_play_player1 == case_review.position
			 	then 
#					case_review.status_board_case
					if case_review.status == true 
						then 
							check_input = true
              case_review.fill_player1
            else
							puts "Attention, ce choix n'est pas possible, merci de rentrer un choix correct"
					end
        else
			 #end
      end

    end


    board_after_play = board_before_play # sachant que la case sélectionnée a maintenant été remplie
    board_after_play.show_board # affiche le plateau après nouvelle sélection

	#	board_before_play = initial_board
	#	board_before_play.each do |case|
	#		if input_player1 == 

	end

end






