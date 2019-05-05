class Train
  attr_reader :type, :speed, :wagon

  def initialize(number, type, wagon)
    @number = number
    @type = type
    @wagon = wagon
    @speed = 0
  end

  def speed_increase(value)
    @speed += value if value > 0 
  end

  def speed_decrease(value)
    @speed -= value
    @speed = 0 if @speed < 0 
  end

  def add_wagon
    @wagon += 1 if @speed == 0
  end

  def wagon_decrease
    @wagon -= 1 if @speed == 0 
    return @wagon = 0 if @wagon < 0
  end

  def set_route(route)
    @route = route
    @station = route.stations[0]
    route.stations[0].train_arrives(self)
  end

  def station_next
    @station = @route.stations[@route.stations.index(@station) + 1]
  end

  def station_prev
    if @route.stations.index(@station) != 0  
      @station = @route.stations[@route.stations.index(@station) - 1]
    end
  end

  def station_return
    "#{@route.stations[@route.stations.index(@station) - 1].name_station}, #{@station.name_station}, #{@route.stations[@route.stations.index(@station) + 1].name_station}"
  end
end

