# frozen_string_literal: true

require_relative 'train'

class PassengerTrain < Train
  attr_reader :type

  def initialize
    super
    @type = :passenger
  end

  def accept_wagon(wagon)
    if @speed.zero? && wagon.type == :passenger
      @train_wagons << wagon unless @train_wagons.include?(wagon)
    end
  end
end
