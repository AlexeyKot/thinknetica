# frozen_string_literal: true

class Route
  attr_accessor :stations

  def initialize(start, finish)
    self.stations = []
    stations << start << finish
  end

  def add_inter_station(station)
    stations.insert(-2, station)
  end

  def delete_station(station)
    stations.delete(station)
  end

  def all_stations
    stations
  end
end
