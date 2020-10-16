# application.rb du jeu de morpion
# permet de lancer le jeu, avec l'affichage initial et la récupération du nom des 2 joueurs

class Application
#	attr_accessor :players

#	def initialize
#		@players = Array.new(2)
#	end

	def launch
	puts "
	-------------------------------------------------------
	|        Bienvenue sur ce jeu de morpion              |
	|        Bonne chance à tous les 2 !                  |
	-------------------------------------------------------
	"
	sleep(1)
	puts "Quel est le nom du 1er joueur ?
(Vous aurez le symbole X, et commencerez la partie)"

	name1 = gets.chomp
	puts "Bienvenue, #{name1}"
	puts
	sleep(1)

	puts "Quel est le nom du 2nd joueur ?"
	name2 = gets.chomp
	puts "Bienvenue, #{name2}"
	sleep(1)

	player1 = Player.new(name1, "X")  # initialise les 2 joueurs et leur symbole respectif
	player2 = Player.new(name2, "O")

	sleep(1)
	puts "La partie va maintenant commencer..."
	puts
	player1.show_state  # affiche le statut des 2 joueurs avant de démarrer
	player2.show_state
	puts
	sleep(1)

	new_players = [player1, player2]  # place les 2 joueurs dans un array qui va être utilisé pour le jeu dans Game
	initial_board = Array.new(9)
	new_game = Game.new(new_players, initial_board)  # lance l'instanciation d'un Game avec les joueurs rentrés
	new_game.launch_game

	new_game.performs_one_round
	

	end
end



