class Route
  attr_accessor :begin_st, :final_st, :stations
  def initialize(begin_st, final_st)
    @begin_st = begin_st
    @final_st = final_st  
    @stations = [begin_st, final_st]
  end
    
  def station_add(station)
    @stations.insert(-2, station)
  end

  def station_delete(station)
    @stations.delete(station)
  end

  def station_return
    return @stations
  end
end
