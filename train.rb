class Train
  attr_accessor :type
  def initialize(number, type, wagon)
    @number = number
    @type = type
    @wagon = wagon
    @speed = 0
  end

  def speed_increase(value)
    @speed += value
  end
  def speed_decrease(value)
    @speed -= value
    if @speed < 0
      @speed = 0
    end
  end
  def speed_return
    return @speed
  end

  def wagon_increase
    if @speed == 0
      @wagon += 1
    end
  end
  def wagon_decrease
    if @speed == 0    
      @wagon -= 1
      if @wagon < 0 
        @wagon = 0
      end
    end
  end
  def wagon_return
    return @wagon
  end

  def get_route(route)
    @route = route
    @station = route.stations[0]
    route.stations[0].to(self)
  end

  def station_next
    @station = @route.stations[@route.stations.index(@station) + 1]
  end
  def station_prev
    @station = @route.stations[@route.stations.index(@station) - 1]
  end
  def station_return
    return "#{@route.stations[@route.stations.index(@station) - 1].name_st}, #{@station.name_st}, #{@route.stations[@route.stations.index(@station) + 1].name_st}"
  end
end



