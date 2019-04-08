#print the board method 
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
 
end

#set user input into array mode
def input_to_index(user_input)
  index = user_input.to_i - 1
end


#move to the user's position/with X by default
 def move(board, index, value="X")
  board[index] = value
end

#verify whether position is available

def position_taken?(board,index) 
  if board[index] == "X" || board[index] == "O"
    true
  elsif board[index] == " "
    false
  elsif board[index] == ""
    false
  elsif board [index] == nil 
    false
  end   
end

#verify whether the move is valid
def valid_move?(board,index)
   if position_taken?(board,index) == false && index.between?(0,8)
     true
   end 
 end

#make the action after verifying 
def turn(board)
<<<<<<< HEAD
  puts "Please enter 1-9:"
=======
  puts "Please enter 1-9 : "
>>>>>>> db58e6410cb149360c4c7b1c481e2b22779d898a
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board,index) == true
    move(board,index)
<<<<<<< HEAD
    display_board(board)
  else
    turn(board)
=======
>>>>>>> db58e6410cb149360c4c7b1c481e2b22779d898a
  end 
end
