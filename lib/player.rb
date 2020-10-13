# player.rb
# player program as part of Validating project Wk4Day2
# player program creates the players and their attributes, to be used in the game


class Player
	attr_accessor :name, :life_points

	def initialize(name)  # initialise le joueur avec son nom, le nombre de points de vie étant à 10 initialement
		@name = name.to_s
    @life_points = 10
	end

  def show_state # montre le nombre de vies restantes du joueur
    puts "#{@name} a #{@life_points} points de vie."
  end

  def gets_damage(damage_received) 
    @life_points = @life_points - damage_received

    if @life_points <= 0
      then
      puts "Le joueur #{@name} a été tué !"
    else
    end
  end

  def compute_damage
    return rand(1..6)
  end

  def attacks(player)
    puts "#{@name} attaque #{player.name}"
    damage_attack = compute_damage
    puts "et lui inflige #{damage_attack} points de dommages"
    player.gets_damage(damage_attack)
  end

end

class HumanPlayer < Player
  attr_accessor :weapon_level

  def initialize(name) # reinitialise pour le format HUmanPlayer
    @name = name.to_s
    @life_points = 100
    @weapon_level = 1
  end

  def show_state # montre le nombre de vies restantes du joueur
    puts "#{@name} a #{@life_points} points de vie et une arme de niveau #{@weapon_level}."
  end

  def compute_damage
    rand(1..6) * @weapon_level
  end

  def search_weapon
    new_weapon_level = rand(1..6)
    puts "Tu as trouvé une arme de niveau #{new_weapon_level}"
    if new_weapon_level > @weapon_level then
      puts "Youhou ! Cette nouvelle arme est meilleure que ton arme actuelle : tu la prends."
      @weapon_level = new_weapon_level
    else
      puts "M@*&$&... cette nouvelle arme n'est pas mieux que ton arme acutelle..."
    end
  end

  def search_health_pack
    new_health_pack = rand(1..6)
    puts "Tu as trouvé un health pack de valeur #{new_health_pack}" # permet d'afficher la valeur du health_pack tiré, pour vérifier la suite
 
    if new_health_pack == 1 then  # ne change rien quand le healh_pack trouvé vaut 1
      puts "Tu n'as rien trouvé, désolé..."

    elsif new_health_pack < 6 then # rajoute 50 points quand le health_pack est entre 2 et 5 inclus
      @life_points = @life_points + 50
      if @life_points > 100 then  # bloque le nombre de points de vie max à 100
        @life_points = 100
        else
      end
      puts "Bravo, tu as trouvé un pack de +50 points de vie !"

    else  # dernière possibilité, pour un health_pack qui vaut 6
       @life_points = @life_points + 80 # rajoute 80 points pour le health_pack de valeur 6
       if @life_points > 100 then # à nouveau bloque le nombre de points de vie max à 100
        @life_points = 100
        else
      end
      puts "Waow, tu as trouvé un pack de +80 points de vie !"
    end
    
  end

end




