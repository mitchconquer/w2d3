class Game
  attr_reader :board

  def initialize
    @board = [[3,2,1], [], []]
  end

  def run
    until won?
      render
      prompt
      move(get_input)
    end
  end

  def render
    p @board
  end

  def prompt
    puts "What's your move? ex 0,1"
  end

  def get_input
    begin
    input = gets.chomp.gsub(/\s+/, "")
    raise "Not the right number of arguments" unless input.length == 3 &&
      input[0].to_i.between?(0,2) &&
      input[2].to_i.between?(0,2) &&
      input[1] == ","
    rescue
      retry
    end
    input.split(",").map(&:to_i)
  end

  def move(pos)
    from, to = pos
    @board[to] << @board[from].pop if valid_move?(from, to)
  end

  def valid_move?(from, to)
    return true if @board[to].empty?
    @board[from].last < @board[to].last
  end

  def won?
    [[[], [3,2,1], []], [[], [], [3,2,1]]].include?(@board)
  end
end
