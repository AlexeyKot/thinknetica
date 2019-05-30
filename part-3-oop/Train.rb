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

  protected

  attr_accessor :number, :type, :wagon_qnt, :speed
end
