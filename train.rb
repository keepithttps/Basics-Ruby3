class Train 

    attr_writer :speed, :stop
  attr_reader :speed, :number_of_wagons, :number, :stop, :route

  def initialize(number, type, number_of_wagons)
    @number = number
    @type = type
    @number_of_wagons = number_of_wagons
  end

  def gain_speed=(up)
    @speed = up
  end

  def reduce_speed=(down)
    @speed = down
  end

  def stop
    @speed = 0
  end

  def number_of_wagons=(num)
     if @speed != 0
      puts "Остоновите поезд на станций"
    else
      @number_of_wagons = num 
    end 
  end

  def assign_route(route)
    @route = route
    @current_station_index = 0
    current_station
  end

  def current_station
    @route[@current_station_index].station
  end

  def next_station
    @route[@current_station_index + 1].station
  end

  def previous_station
    @route[@current_station_index - 1].station if @current_station_index.positive?
  end

  def go_forward
    @current_station_index += 1
    puts "Предыдущая станция:#{previous_station}"
    puts "Tекущая_станция: #{current_station}"
    puts "Следущая станция: #{next_station}"
  end

  def go_back
    @current_station_index -= 1
    puts "Предыдущая станция: #{previous_station}" 
    puts "Tекущая_станция: #{current_station}"
    puts "Следущая станция: #{next_station}"
  end
end


class Route
  attr_reader :station

  def initialize(station)
    @station = station
  end

end

# список станций = ('MSK', 'SPB', 'NSK', 'EKB', 'NNV', 'KZN', 'OMS')

msk_oms = []
msk_oms << Route.new("MSK")
msk_oms << Route.new("SPB")
msk_oms << Route.new("NSK")
msk_oms << Route.new("EKB")
msk_oms << Route.new("NNV")
msk_oms << Route.new("KZN")
msk_oms << Route.new("OMS")


msk = Train.new(123, 'passenger', 40)
msk.assign_route(msk_oms)

puts
puts msk.go_forward
puts msk.go_forward
puts msk.go_forward
puts msk.go_back
