#board
board = [" "," "," "," "," "," "," "," "," "]

#display_board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#input_to_index
def input_to_index(integer)
  index = integer.to_i - 1
end

#valid_move?
def valid_move?(board, index)

  valid_move = boolean

  if board[index] == "X" || board[index] == "O"
    valid_move = false
  elsif index.between?(0, 8)
    valid_move = true
  else
    valid_move = false
  end

  valid_move

end

#move
def move(board, index, char)

  board[index] = char

end

#turn
def turn(board)

  puts "Please enter 1-9:"

  integer = gets.strip

  input_to_index(integer)

  display_board(board)

end
