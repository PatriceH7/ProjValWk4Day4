# app créé pour gérer la version 2.0

require 'bundler'
Bundler.require

# lignes qui appellent les fichiers lib/player.rb et lib/game.rb
# comme ça, tu peux faire User.new dans ce fichier d'application. Top.
require_relative 'lib/player'
require_relative 'lib/game'

# display au lancement du jeu
puts "-----------------------------------------------------"
puts "| Bienvenue sur 'ILS VEULENT TOUS MA POO'  !        |"
puts "| Le but du jeu est d'être le dernier survivant !   |"
puts "-----------------------------------------------------"

puts "Merci de confirmer ton prénom, pour l'initialisation de ton profil :"
input_name = gets.chomp.to_s
user = HumanPlayer.new(input_name)
# humanplayer.show_state  permet de vérifier la création du humanplayer


player1 = Player.new("Josiane")
player2 = Player.new("José")

enemies = [player1, player2] # création de l'array enemies avec les 2 joueurs "bots"

while user.life_points > 0 && (player1.life_points > 0 || player2.life_points > 0)
puts user.show_state
puts
puts "Quelle action veux-tu effectuer ?" # menu proposant les différentes options au joueur
puts
puts "a - chercher une meilleur arme"
puts "s - chercher à se soigner"
puts
puts "attaquer un joueur en vue :"
print "0 -"
  if player1.life_points <= 0 # pour ne pas afficher un status de vie négatif
    player1.life_points = 0
  else
  end
  player1.show_state
print "1 -"
  if player2.life_points <= 0 
    player2.life_points = 0
  else
  end
  player2.show_state


check_input = false  # variable correspondant à la validité de l'entrée vs choix proposés
while check_input == false do # boucle permettant de garantir l'entrée d'un choix proposé

  action = gets.chomp.to_s # engage l'action en fonction du choix de l'utilisateur
  if action == "a" 
	 then 
    check_input = true
    user.search_weapon
  elsif action == "s" 
	 then 
    check_input = true
    user.search_health_pack
  elsif action == "0"
	 then 
   check_input = true
   user.attacks(player1)
  elsif action == "1"
	 then 
    check_input = true
    user.attacks(player2)
  else
	 puts "Mauvaise entrée - merci de rester sur les choix proposés."
  end
end	

puts "Les autres joueurs t'attaquent !"
enemies.each do |enemy|
	if enemy.life_points > 0 
		then
			enemy.attacks(user)
    else
  end
end
	
end

puts "La partie est finie"

if user.life_points > 0 then # messages en fonction du statut du joueur à la fin du jeu
	puts "BRAVO ! TU AS GAGNE !"
else
	puts "Loser ! Tu as perdu !"
end










