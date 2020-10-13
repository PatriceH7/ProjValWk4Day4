# lignes très pratiques qui appellent les gems du Gemfile. On verra plus tard comment s'en servir ;) - ça évite juste les "require" partout
require 'bundler'
Bundler.require

# lignes qui appellent les fichiers lib/player.rb et lib/game.rb
# comme ça, tu peux faire User.new dans ce fichier d'application. Top.
require_relative 'lib/player'
require_relative 'lib/game'


# création des 2 joueurs
player1 = Player.new("Josiane")
player2 = Player.new("José")


#boucle pour relancer les combats, tant que les vies sont positives

while player1.life_points > 0 && player2.life_points > 0 do 
  # présentation de l'état (nombre de vies) de chaque joueur avec show_state
  puts "Voici l'état de nos joueurs :"
  player1.show_state
  player2.show_state
  puts

  # phase d'attaque
  puts "Passons à la phase d'attaque :"
  player1.attacks(player2)
    break if player2.life_points < 0  # pour sortir de la boucle while immédiatement en cas de décès du 2nd joueur
  player2.attacks(player1)
  puts
  
end


# binding.pry

# Maintenant c'est open bar pour tester ton application. Tous les fichiers importants sont chargés
# Tu peux faire User.new, Event.new, binding.pry, User.all, etc.