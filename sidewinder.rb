class Sidewinder

  def self.heads?
   rand(2) == 0
  end

  def self.tails?
    !heads?
  end

  def self.on(grid)
    grid.each_row do |row|
      run = []

      row.each do |cell|
        run << cell

        at_eastern_boundary = (cell.east == nil)
        at_southern_boundary = (cell.north == nil)

        should_close_out = at_eastern_boundary || (!at_southern_boundary && heads?)

        if should_close_out
          member = run.sample
          member.link(member.north) if member.north
          run.clear
        else
          cell.link(cell.east)
        end
      end
    end
    grid
  end

end