class Route

	def initialize(starting, end_station)
		@starting = starting
		@end_station = end_station
		@add_a_stations = []                  # добавленные станции в маршрут  
	end

	def add_a_station(name)                 # добавить станцию в маршрут
		@add_a_stations << name
	end

	def add_a_station_delete(name)					 # удалить станцию из маршрута
		@add_a_station.delete(name)
	end

	def all_station_in_order                 # всех станций по-порядку следования
		@add_a_stations.unshift(@starting)
		@add_a_stations.push(@end_station)
		puts @add_a_stations
	end
end
stan = Route.new('a', 'c')

stan.add_a_station('b') 
stan.all_station_in_order
