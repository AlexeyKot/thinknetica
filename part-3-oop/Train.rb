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

  def go_to_next_station
    self.current_station_index += 1
    if route.stations[current_station_index]
      route.stations[current_station_index].remove_train(self)
      route.stations[current_station_index].add_train(self)
    else
      puts 'Поезд уже прибыл в конечную точку маршрута'
    end
  end

  protected

  attr_accessor :number, :type, :wagon_qnt, :speed, :current_station_index
end
