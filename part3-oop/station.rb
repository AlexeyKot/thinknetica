# frozen_string_literal: true

class Station
  private

  attr_accessor :name

  attr_writer :trains

  public

  attr_reader :trains

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

  def trains_by_type
    trains_sorted_by_type = trains.sort_by(&:type)
    trains_sorted_by_type.map do |train|
      { train.type => train.number }
    end
    # filtered_trains = trains.select do |train|
    #   train.type == type
    # end
  end
end
