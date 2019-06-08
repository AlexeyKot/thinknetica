# frozen_string_literal: true

class Station
  private

  attr_accessor :name, :trains

  public

  def initialize(name)
    self.name = name
    self.trains = []
  end

  def add_train(train)
    trains << train
  end

  def remove_train(train)
    trains.delete(train)
  end

  def all_trains
    trains
  end

  def pass_trains
    pass_trains = trains.select do |train|
      train.type == 'passenger'
    end
    pass_trains
  end

  def freight_trains
    freight_trains = trains.select do |train|
      train.type == 'freight'
    end
    freight_trains
  end
end
