# frozen_string_literal: true

class Train
  def initialize(number, type, wagon_qnt)
    self.number = number
    self.type = type
    self.wagon_qnt = wagon_qnt
    self.speed = 0
  end

  def gas(number)
    self.speed += number
  end

  def stop
    self.speed = 0
  end

  def stopped?
    speed.zero?
  end

  def current_speed
    speed
  end

  def add_wagon
    self.wagon_qnt += 1 if stopped?
  end

  def remove_wagon
    self.wagon_qnt += 0 if stopped?
  end

  def wagons
    wagon_qnt
  end

  def route=(route)
    @route = route
    self.current_station_index = 0
    route.stations[current_station_index].add_train(self)
  end

  def route
    @route
  end

  def prev_station
    if current_station_index.positive?
      route.stations[current_station_index - 1]
    else
      puts 'Поезд уже находится на первой станции'
    end
  end

  def current_station
    route.stations[current_station_index]
  end

  def next_station
    if route.stations[current_station_index + 1]
      route.stations[current_station_index + 1]
    else
      puts 'Поезд уже находится на конечной станции'
    end
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

  protected

  attr_accessor :number, :type, :wagon_qnt, :speed, :current_station_index
end
