file = File.open("day3.in")

lines = file.readlines.map(&:chomp)

TOTAL_LINES = lines.length
TOKEN_LENGTH = lines[0].length

initial = Array.new(lines[0].length, 0)

frequencies = lines.reduce(initial) {|aggregator, current|
    for i in 0...TOKEN_LENGTH
        aggregator[i] = (aggregator[i] + current[i].to_i)
    end
    aggregator
}

gamma = frequencies.map {|i| i >= TOTAL_LINES / 2 ? 1 : 0 }
epsilon = gamma.map {|i| i == 0 ? 1 : 0}

p gamma.join.to_i(2)
p epsilon.join.to_i(2)
p gamma.join.to_i(2) * epsilon.join.to_i(2) 