file = File.open("day2.in")
directions = file.readlines.map {|line| line.chomp.split }
result = 0
x = 0
y = 0
aim = 0


directions.each { |line|
    direction, speed = line
    if direction == "forward"
        x += speed.to_i if direction == "forward"
        y += aim * speed.to_i if direction == "forward"
    end
    aim -= speed.to_i if direction == "up"
    aim += speed.to_i if direction == "down"
}

p x
p y 
p x*y
file.close