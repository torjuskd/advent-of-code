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

claims.each do |claim|
    claim_parts = claim.split(' ')
    start_coors = claim_parts[2].split(':')[0].split(',').map! {|x| Integer(x)}
    dimensions = claim_parts[3].split('x').map! {|x| Integer(x)}
    
    unclaimed = true
    for x in 1..dimensions[0]
        for y in 1..dimensions[1]
            if claimed[x+start_coors[0]][y+start_coors[1]] > 1 then unclaimed = false end
        end
    end
    if unclaimed then puts claim_parts[0] end
end