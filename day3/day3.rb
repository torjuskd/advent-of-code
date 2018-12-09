claims = File.readlines 'input.txt'
claimed = Array.new(2000, 0) { Array.new(2000, 0) }
claims.each do |claim|
    claim_parts = claim.split(' ')
    start_coors = claim_parts[2].split(':')[0].split(',').map! {|x| Integer(x)}
    dimensions = claim_parts[3].split('x').map! {|x| Integer(x)}
    
    for x in 1..dimensions[0]
        for y in 1..dimensions[1]
            claimed[x+start_coors[0]][y+start_coors[1]] += 1
        end
    end
end
count = 0
for x in 0..claimed.length-1
    for y in 0..claimed.length-1
        if claimed[x][y] > 1 then count += 1 end
    end
end
puts count