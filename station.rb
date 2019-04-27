class Station
  attr_accessor :trains, :name_st
  
  def initialize(name_st)
    @name_st = name_st
    @trains = []
  end

  def from(train)
    @trains.delete(train)
  end

  def to(train)
    @trains.push(train)
  end

  def trains_on_st
    return @trains
  end
  def trains_type
    train_gruz = 0
    train_pass = 0
    @trains.each { |i|
      if i.type == "gruz"
         train_gruz += 1
      elsif i.type == "pass"
         train_pass += 1
      end
    }
  return "gruz: #{train_gruz}, pass: #{train_pass}"
  end
end

