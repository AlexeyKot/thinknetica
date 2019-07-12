# frozen_string_literal: true

class Train
  private

  attr_accessor :current_station_index

  public

  attr_reader :route, :wagons, :speed, :number

  def initialize(number)
    @number = number
    @wagons = []
    @speed = 0
  end

  def gas(number)
    self.speed += number if number.positive?
  end

  def stop
    self.speed = 0
  end

  def stopped?
    speed.zero?
  end

  def add_wagon
    self.wagons += 1 if stopped?
  end

  def remove_wagon
    self.wagons -= 1 if stopped? && wagons.positive?
  end

  def route=(route)
    @route = route
    self.current_station_index = 0
    route.stations[current_station_index].add_train(self)
  end

  def prev_station
    route.stations[current_station_index - 1] if current_station_index.positive?
  end

  def current_station
    route.stations[current_station_index]
  end

  def next_station
    route.stations[current_station_index + 1]
  end

  def go_to(station)
    current_station.remove_train(self)
    station.add_train(self)
    self.current_station_index = route.stations.index(station)
  end

  def go_to_next_station
    go_to(next_station) if next_station
  end

  def go_to_prev_station
    go_to(prev_station) if prev_station
  end
end
