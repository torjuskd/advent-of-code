boxids = File.readlines 'input.txt'
while !boxids.empty?
    id = boxids.pop
    id.chars.each_with_index do |letter, index|
        if index == 0 or index == id.length then next
        end
        boxids.each do |other_id|
            if id[0..index-1]+id[index+1..-1] == other_id[0..index-1]+other_id[index+1..-1]
                puts id[0..index-1]+id[index+1..-1]
                exit
            end
        end
    end
end