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
    train_types = trains.map(&:type).uniq
    train_types.map do |type|
      current_type_trains = trains.select { |train| train.type == type }
      puts "Поездов типа #{type} найдено: #{current_type_trains.count}"
      puts current_type_trains.to_s
      current_type_trains.count
    end
  end
end
