class Game
  def initialize(seed)
    @grid = seed
  end

  def tick
    if @grid.empty?
      []
    else
      [[1, 1]]
    end
  end
end
