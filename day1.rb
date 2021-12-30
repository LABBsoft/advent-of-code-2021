file = File.open("test.in")
depths = file.readlines.map(&:chomp).map(&:to_i)
result = 0
depths.reduce {|accumulator, current| 
    result += 1 if accumulator < current 
    accumulator = current
}
p result
file.close