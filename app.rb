# app.rb du jeu de morpion
# to be called to start the program and initiate the play

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
#	players_ini = Array.new(2)
#	board_ini = Array.new(9)

	application = Application.new
	application.launch

end

perform

#binding.pry
#puts "end of file"


