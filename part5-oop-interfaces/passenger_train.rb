class PassengerTrain < Train
  def start_engine
    puts "Click!!"
    super
    puts "Wrooom!!"
  end

  protected

  def initial_rpm
    1000
  end
end