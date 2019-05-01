class Route
  attr_accessor :stations

  def initialize(first_station, final_station)
    @stations = [first_station, final_station]
  end
    
  def station_add(station)
    @stations.insert(-2, station)
  end

  def station_delete(station)
    if station != @stations.first && station != @stations.last
    @stations.delete(station)
    end
  end
end

