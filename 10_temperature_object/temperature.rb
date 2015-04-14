class Temperature

	def initialize(attrs)
		@attrs = attrs
	end

	def to_fahrenheit
		if @attrs[:f]
			@attrs[:f] 
		else
			((@attrs[:c].to_f * 1.8) + 32).round(1)
		end
	end

	def to_celsius
		if @attrs[:c]
			@attrs[:c]
		else
			((@attrs[:f].to_f - 32) / 1.8).round(1)
		end
	end

	def self.in_celsius(v)
		Temperature.new({:c => v}) 
	end

	def self.in_fahrenheit(v)
		Temperature.new({:f => v})
	end

end

class Celsius < Temperature

	def initialize(celsius)
		super(c: celsius)
	end

end

class Fahrenheit < Temperature

	def initialize(fahrenheit)
		super(f: fahrenheit)
	end
end

