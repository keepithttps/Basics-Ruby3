class Station
	
	def initialize(name)
		@name_station = name                                # название станции
		@freight_train = ['SAM_RND', 'TOM_KEM']             # грузовой поезд
		@passenger_train = ['TOL_IRK', 'ULY_kHB']           # пассажирский поезд
	end

	def arrived_train_at_station(name_train)              # Прибыл поезд на станции(имя поезда)
		num = nil
		until num == 1 || num == 2			
			puts "Какой поезд прибыл?"      
			puts " 1. Пассажирский"
			puts " 2. Грузовой"
			puts "Выберите нужный вариант и введите цифру  1 или 2."
			num = gets.chomp.to_i
		end

		if  num == 1
			@passenger_train << name_train
		else
			@freight_train << name_train
		end

		def list_of_all_trains
			puts "Список поездов на станции."
			puts " Всего поездов: #{(@passenger_train + @freight_train).size}"
			puts "#{@passenger_train + @freight_train}"
		end

		def list_of_trains_by_type
			puts "Колличество поездов по типу"
			puts "Пассажирских: #{@passenger_train.size}"
			puts "Грузовых: #{@freight_train.size}"
		end 

		def departure_of_train(name)
			if @passenger_train.include?(name)
				@passenger_train.delete(name)
			elsif @freight_train.include?(name)				
				@freight_train.delete(name)
			else
				puts "На станции нет поезда #{name}"
			end
		end

	end

end

station1 = Station.new("station1")

station1.arrived_train_at_station('MSK_KLG')

puts station1.list_of_all_trains
puts station1.list_of_trains_by_type

station1.departure_of_train('MSK_KLG')
puts station1.list_of_all_trains
