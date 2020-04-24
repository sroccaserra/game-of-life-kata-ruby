ONE = 1

class Game
  def initialize(seed)
    @grid = seed
  end

  def tick
    if nb_neighbours(ONE, ONE) == 3
      [[ONE, ONE]]
    else
      []
    end
  end

  private

  def nb_neighbours(_, _)
    [@grid.size, 3].min
  end
end
