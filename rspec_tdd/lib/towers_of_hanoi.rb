class TowersOfHanoi

  attr_reader :towers
  
  def initialize
    @towers = [[1,2,3],[],[]]
  end
  
  def move(from_tower,to_tower)
    raise "Invalid move." unless from_tower.is_a?(Integer) && to_tower.is_a?(Integer) 
    unless from_tower.between?(0,towers.length-1) && to_tower.between?(0,towers.length-1)
      raise "tower out of bounds."
    end
    
    to = towers[to_tower]
    from = towers[from_tower]
    raise "from tower is empty" if from.empty?
    
    if to.empty?
      to.unshift(from.shift)
    else
      raise "Disk is too big!" if from.first > to.first
      to.unshift(from.shift)
    end
  end
  
  def won?
    return true if towers.first.empty? && towers.any? { |tower| tower.length == 3 }
    false
  end
  
  def play
    render
    until won?
      print "Input (0,1): "
      from_tower, to_tower = gets.chomp.split(",").map(&:to_i)
      move(from_tower, to_tower)
      render
    end
    puts "You win!"
  end
  
  private
  
  def render
    p towers
  end
end
