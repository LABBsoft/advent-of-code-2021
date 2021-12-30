file = File.open("day2.in")
directions = file.readlines.map {|line| line.chomp.split }
result = 0
x = 0
y = 0

directions.each { |line|
    direction, speed = line
    x += speed.to_i if direction == "forward"
    y -= speed.to_i if direction == "up"
    y += speed.to_i if direction == "down"
}

p x
p y 
p x*y
file.close