content = File.readlines 'input.txt'
frequency = 0
list = [frequency]
while true
	content.each do |line|
		frequency += eval(line)
		if list.include?(frequency)
			puts frequency
			exit
		end
		list.push(frequency)
	end
end