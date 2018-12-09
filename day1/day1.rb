content = File.readlines 'input.txt'
frequency = 0
content.each { |line| frequency += eval(line) }
puts frequency
