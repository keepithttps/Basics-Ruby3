class Train 
	attr_writer :speed, :stop
	attr_reader :speed, :number_of_wagons, :number, :stop

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

  # список станций = ('MSK', 'SPB', 'NSK', 'EKB', 'NNV', 'KZN', 'OMS')

  # st_on = ['MSK', 'SPB', 'NSK', 'EKB', 'NNV', 'KZN', 'OMS']
	def route(*station)
		@starting = station.first
		@end_station = station.last
		@route = station

		puts "Поезд #{@number} находиться на станции #{@starting}"
	end
		
	def finding_a_train_on_line
		num = nil
		until num == 1 || num == 2			
			puts "Поезд #{@number} находиться на станции #{@starting}"      
			puts " 1. Следущая станция"
			puts " 2. Предыдущая станция"
			puts "Выберите нужный вариант и введите цифру  1 или 2."
			num = gets.chomp.to_i
		end
      
    ind = @route.index(@starting)
		if  num == 1
		  puts "Поезд #{@number} находиться на станции #{@starting = @route[ind + 1]}"
		else
			puts "Поезд #{@number} находиться на станции #{@starting = @route[ind - 1]}"
		end

    ind = @route.index(@starting)
    puts "Предыдущая станция #{@route[(ind - 1)]}"
    puts "Сейчас станция #{@route[ind]}"
    puts "Следующая станция #{@route[(ind + 1)]}"
	end
end
