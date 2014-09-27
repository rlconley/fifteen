# class Player
# end
#
# class Computer
# end
# We don't have multiple classes yet. Potential other classes are player anc computer.

class Game
  # attr_reader , we might need this later
  def initialize
    # @number_pool = number_pool
    # @number_pool << [1, 2, 3, 4, 5, 6, 7, 8, 9]
    @number_pool = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    @player_numbers = []
    @computer_numbers = []
  end

# def winning_combinations(numbers, sum)
  # Array(numbers).combination(3).find_all { |x, y, z| x + y + z == sum } || []
  # result = winning_combinations(numbers, sum)
#   puts "given this array of choices: #{numbers.inspect}"
#   puts "#{result.size} pairs add up to #{sum}: #{result.inspect}"
#   # if result.size >= 1
#   #   puts "Win"
#   # end
# end

# trying this down in the list of game methods
  # def greeting
  #   puts "Welcome to our game of 15. You and the computer will take turns choosing one number at a time between 1 to 9. Someone wins if they have said three numbers that sum to 15. Once a number is chosen, it can't be used again this round. Note that any combination of three numbers you mentioned can be used."
  # end

  # We could make these into classes
  # Need to put some way of randomly choosing who goes first.
  # Need a while statement. ex: while result.size < 1 && number pool !=[],

  def player_turn #need argument here?
    puts "What number do you choose?"
    player_choice = gets.chomp.to_i
    @number_pool.delete(player_choice)
    @player_numbers << player_choice

    if @player_numbers.size >= 3
      score_player
    else
      computer_turn
    end
  end


  def computer_turn
    computer_choice = @number_pool.sample
    puts "The computer chose #{computer_choice}"
    @number_pool.delete(computer_choice)
    @computer_numbers << computer_choice
    if @computer_numbers.size >= 3
      @computer_numbers.did_ye_win
    # Array(@computer_numbers).combination(3).find_all { |x, y, z| x + y + z == 15 } || []
    # puts "#{Array}"

    else
      player_turn
    end
  end

# Only invoke did_ye_win after each player has three numbers. Need a counter for number of guesses.
  #
  # def did_ye_win(numbers, sum)
  # #
  # # Right now, this is general, and we want it to apply to both. We also need to call this method on each player's set of guesses only, not the whole array of numbers. Do we need to make two different methods or call the method twice per round, once on computer and once on player?
  # #
  #   # numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  #   @player_numbers = numbers
  #   sum = ARGV.empty? ? 15 : ARGV.first.to_i
  #
  # end
  # #


    # We really want this to be three different options, player win, computer win, or no one win.
    # if results.size > 1
    #   puts "Computer won."
    # elsif  Array(@player_numbers).combination(3).find_all { |x, y, z| x + y + z == sum } || []
    #   puts "Player won."
    # else
    #   puts "Keep trying" and makes game continue to play.
    # end
  #end
  # def is_the_game_unwinnable
  # end

# def number
#   @number
# end
end

game1 = Game.new
#game1.initialize
#game1.greeting
  puts  "Welcome to our game of 15. You and the computer will take turns choosing one number at a time between 1 to 9. Someone wins if they have said three numbers that sum to 15. Once a number is chosen, it can't be used again this round. Note that any combination of three numbers you mentioned can be used."
game1.player_turn
game1.computer_turn
# game1.did_ye_win
game1.sum_exists
  puts "Game over"
