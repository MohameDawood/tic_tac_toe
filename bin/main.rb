#!/usr/bin/env ruby
# rubocop:disable all
# our game will have 3 classes
# the game itself
# the players
# the board
class TicTacToe
    # initialize
      # set up the board
      # set up the players
      # assign the starting player
    def initialize
      @player1 = "Player 1"

      @player2 = "Player 2"

      @board = [

        %w[_ _ _],

        %w[_ _ _],

        %w[_ _ _]

      ]

      @converter = {

        1 => [2, 0],

        2 => [2, 1],

        3 => [2, 2],

        4 => [1, 0],

        5 => [1, 1],

        6 => [1, 2],

        7 => [0, 0],

        8 => [0, 1],

        9 => [0, 2]

      }

      @current_player = @player1
    end

    #display board

    def display
      puts " #{@board[0][0]} | #{@board[0][1]} | #{@board[0][2]}"

      puts '-----------'

      puts " #{@board[1][0]} | #{@board[1][1]} | #{@board[1][2]}"

      puts '-----------'

      puts " #{@board[2][0]} | #{@board[2][1]} | #{@board[2][2]}"
    end

    # switch players

    def switch_players
        if @current_player == @player1
            @current_player = @player2
        else
            @current_player = @player1
        end
    end

    # play

    def play
      game_on = true

      # initial instructions for player

      while game_on
        # loop infinitely
            # call the board rendering method
            # ask for coordinates from the current player
            winner = false
            puts "#{@current_player}, it's your turn!"
            puts "#{@current_player}, please select a move"
            input = gets.chomp
            # game informs player if the selected move is invalid
            puts "Your move #{input} is valid or invalid"
            display
            puts "#{@current_player}, please select a move"
            input = gets.chomp
            # game informs player if the selected move is a winning move
            puts "Your move #{input} is a winning move!"
            display
            puts "#{@current_player}, please select a move"
            input = gets.chomp
            # game informs player if the selected move is a draw move
            puts "Your move #{input} is a draw move"
            display
            switch_players
            # break the loop IF the game is over
            # switch players
        if winner # and/or draw (the exact condition in this milestone is not important)
          game_on = false
        end
      end
    end

    # check_game_over
        # check_victory
        # check_draw

    # check_victory
        # IF board says current player's piece has
        # a winning_combination?
            # display a victory message

    # check_draw
        # IF Board says we've filled up
            # display a draw message


    # switch_players
        # PlayerX >> PlayerO or vice versa
end

new_game = TicTacToe.new
new_game.play
