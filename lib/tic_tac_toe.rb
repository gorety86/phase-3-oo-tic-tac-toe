class TicTacToe

    def initialize
        @board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
        end
             
    WIN_COMBINATIONS = [ 
        [0,1,2],
        [3,4,5],
        [6,7,8],
        [0,3,6], 
        [1,4,7], 
        [2,5,8], 
        [0,4,8], 
        [6,4,2] 
    ]
    def display_board
        puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
        puts "-----------"
        puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
        puts "-----------"
        puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
      end

      def input_to_index(str)
        str.to_i - 1
    end

    def move(index, token = 'x')
        @board[index] = token
    end

    def position_taken?(index)
        @board[index] != ' '
    end

    def valid_move?(index)
        if index.between?(0,8) && !position_taken?(index)
            return true
         end
      end

      def turn_count
        9-@board.count(' ')
       end 

      def current_player
        self.turn_count.even? ? "X" : "O"
      end
      def turn_count
        input = gets
        self.turn unless (1..9).include?(str.to_i)
        index = self.input_to_index(input)
  
        if valid_move?(index)
          move(index, current_player)
          self.display_board
        end
    end
    def won?
        WIN_COMBINATIONS.each do |win_comb|
          if [@board[win_comb[0]], @board[win_comb[1]], @board[win_comb[2]]].uniq = ["x"] || ["o"]
            return win_comb
          end
          false
        end

        def full?
            !@board.include?(' ')
          end

        def draw?
            self.full? && !self.won?
          end
        end
  
        def over?
          self.won? || self.draw?
        end
  
        def winner
          if self.won?
            (self.current_player == "x") ? "o" : "x"
        end
  
        def play
            until self.over?
              self.turn
            end
              if self.won?
                puts "Congratulations #{self.winner}!"
              elsif self.daw?
                puts "Cat's Game!"
        end
      end
    end
end