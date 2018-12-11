def edge(x)
    return x == 500-1 || x == 0
end

points = File.open("input.txt").read.split("\n")
points.map! {|pair| pair.split(', ').map! {|part| Integer(part)}}
grid = Array.new(500, -1) { Array.new(500, -1) }
for x in 0..grid.length-1
    for y in 0..grid.length-1
        min_dist = Float::INFINITY
        points.each_with_index do |point, index|
            dist = (point[0] - x).abs + (point[1] - y).abs
            if dist < min_dist
                min_dist = dist
                grid[x][y] = index
            elsif dist == min_dist
                grid[x][y] = -1
            end
        end
    end
end
invalid = []
counts = Array.new(points.length, 0)
for x in 0..grid.length-1
    for y in 0..grid.length-1
        point = grid[x][y]
        if point != -1 && counts[point] != -1 then counts[point] += 1 end
        if (edge(x) || edge(y))
            counts[point] = -1
        end
    end
end
p counts.max()

