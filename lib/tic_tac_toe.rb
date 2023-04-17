class TicTacToe

    def initialize
        @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
    end

    WIN_COMBINATIONS = [
        [0, 1, 2], #Top Row
        [3, 4, 5], #Middle Row
        [6, 7, 8], #Bottom Row
        [0, 3, 6], #Left Column
        [1, 4, 7], #Middle Column
        [2, 5, 8], #Right Column
        [0, 4, 8], #Diagnol Top left to bottom right
        [2, 4, 6], #Diagnol Top right to bottom left
    ]

    def display_board
        puts  " #{@board[0]} | #{@board[1]} | #{@board[2]} " 
        puts  " ----------------------- " 
        puts  " #{@board[3]} | #{@board[4]} | #{@board[5]} " 
        puts  " ----------------------- " 
        puts  " #{@board[6]} | #{@board[7]} | #{@board[8]} " 
        puts  " ----------------------- " 
    end

    def input_to_index(string)
        string.to_i - 1
    end

    def move(index, player = "X")
        @board[index] = player
    end

    def position_taken? (prospective_move)
        @board[prospective_move] != " "
    end

    def valid_move?(position)
        !position_taken?(position) && position.between?(0,8)
    end

    def turn_count
        @board.count {|square| square != " "}
    end

    def current_player
        turn_count.even? ? "X" : "O"
    end
end