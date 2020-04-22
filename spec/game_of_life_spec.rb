require './lib/game_of_life'

=begin
   1. Any live cell with fewer than two live neighbours dies, as if caused by underpopulation.
   2. Any live cell with more than three live neighbours dies, as if by overcrowding.
   3. Any live cell with two or three live neighbours lives on to the next generation.
   4. Any dead cell with exactly three live neighbours becomes a live cell.
=end

RSpec.describe 'Game of Life' do
  describe 'A dead cell at [1, 1]' do
    it 'should stay dead in a whole dead grid' do
      game = Game.new([])
      expect(game.tick).not_to include [1, 1]
    end

    it 'should become alive with three alive neighbours' do
      game = Game.new([[0, 0], [1, 0], [2, 0]])
      expect(game.tick).to include [1, 1]
    end
  end
end
