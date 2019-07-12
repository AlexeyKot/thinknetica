# frozen_string_literal: true

require_relative 'wagon'

class PassengerWagon < Wagon
  attr_reader :type

  def initialize
    @type = :passenger
  end
end
