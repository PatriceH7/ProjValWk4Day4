# app to be called to start the program and initiate the play
require 'bundler'
Bundler.require


$:.unshift File.expand_path("./../lib/app", __FILE__)
require 'game' # classe à appeler
require 'player'
require 'board'
require 'board_case'

$:.unshift File.expand_path("./../lib/views", __FILE__)
require 'application' # classe à appeler
require 'show'


def perform
	puts "
	-------------------------------------------------------
	|        Bienvenue sur ce jeu de morpion              |
	|        Bonne chance à tous les 2 !                  |
	-------------------------------------------------------
	"
	sleep(1)
	puts "Quel est le nom du 1er joueur ? (Vous aurez le symbole X, et commencerez la partie)"
	name1 = gets.chomp
	sleep(1)
	puts "Bienvenue, #{name1}"
	sleep(1)

	puts "Quel est le nom du 2nd joueur ?"
	name2 = gets.chomp
	sleep(1)
	puts "Bienvenue, #{name2}"
	sleep(1)

	player1 = Player.new(name1, "X")
	player2 = Player.new(name2, "O")

	sleep(1)
	puts "La partie va maintenant commencer..."

	player1.show_state
	player2.show_state


end

perform

#binding.pry
#puts "end of file"


