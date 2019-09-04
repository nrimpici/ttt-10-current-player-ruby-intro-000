board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]


def turn_count(board)
  counter = 0
  board.each do |slot|
    if slot == "O" || slot == "X"
      counter += 1
    end
  end
  counter
end

def current_player(board)
  if turn_count(board).odd?
    return "O"
  else return "X"
  end
end


def turn_count(board)
  # board.count{|token| token == "X" || token == "O"}

  turns = 0
  board.each do |token|
    if token == "X" || token == "O"
      turns += 1
    end
  end
  turns

end

def current_player(board)
  turn_count(board) % 2 == 0 ? "X" : "O"
end
