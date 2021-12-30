file = File.open("day1.in")

depths = file.readlines.map(&:chomp).map(&:to_i)
sums = []
result = 0

(0..depths.length).each { |i|
    sums << ((depths.dig(i) || 0) + (depths.dig(i + 1) || 0) + (depths.dig(i + 2) || 0))
}

sums.reduce {|accumulator, current| 
    result += 1 if accumulator < current 
    accumulator = current
}

p result
file.close