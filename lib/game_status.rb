# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def won?(board)
  board.each do |position|
    if (position[0] == "X" && position[1] == "X" && position[2] == "X") || (position[0] == "O" && position[1] == "O" && position[2] == "O")
      WIN_COMBINATIONS[0]
    elsif (position[3] == "X" && position[4] == "X" && position[5] == "X") || (position[3] == "O" && position[4] == "O" && position[5] == "O")
        WIN_COMBINATIONS[1]
      elsif (position[3] == "X" && position[4] == "X" && position[5] == "X") || (position[3] == "O" && position[4] == "O" && position[5] == "O")
          WIN_COMBINATIONS[1]
    end
  end
end
