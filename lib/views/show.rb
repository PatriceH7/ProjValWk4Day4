# classe permettant d'afficher, à un instant t, le plateau

require 'pry'


class Show
	attr_accessor :board

  def show_board(current_board)
    @board = current_board

  puts "Voici l'état actuel du plateau :"
    puts "-" * 13
    puts "| #{board[0].content} | #{board[1].content} | #{board[2].content} |"

  #  puts "-" * 13
 #  puts "| #{b1.content} | #{b2.content} | #{b3.content} |"
  #  puts "-" * 13
  #  puts "| #{c1.content} | #{c2.content} | #{c3.content} |"
  #  puts "-" * 13
  #  puts
  end

end

binding.pry
puts "end of file"


