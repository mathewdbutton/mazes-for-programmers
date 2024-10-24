require_relative 'grid'
require_relative 'sidewinder'

grid = Grid.new(10,10)
Sidewinder.on(grid)

puts grid
img = grid.to_png(cell_size: 40)

img.save "maze.png"