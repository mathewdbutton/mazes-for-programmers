require_relative 'grid'
require_relative 'binary_tree'

grid = Grid.new(10,10)
BinaryTree.on(grid)

puts grid
img = grid.to_png(cell_size: 40)

img.save "maze.png"