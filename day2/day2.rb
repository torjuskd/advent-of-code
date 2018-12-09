boxids = File.readlines 'input.txt'
tot_twos = 0
tot_threes = 0
boxids.each do |id|
    twos = 0
    threes = 0
    id.chars.each do |letter|
        count = id.count(letter)
        if count == 2
            twos = 1
        elsif count == 3
            threes = 1
        end
    end
    tot_twos += twos
    tot_threes += threes
end
puts tot_twos * tot_threes