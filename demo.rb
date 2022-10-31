require 'ruby2d'

set width: 640
set height: 480

Image.new('background.png')

Square.new(
    color: 'red',
    x: 100,
    y: 10,
    width: 100,
    height: 100,
)

Circle.new(
    color: 'yellow',
    x: 20,
    y: 20,
    radius: 90,
)

Triangle.new(
    color: 'orange',
    x1:210, y1:10,
    x2:310, y2:10,
    x3:210, y3:110,
)

on :key_held do |event|
    case event.key_held
    when 'up'
        square.y -= 5
    when 'down'
        square.y += 5
    when 'left'
        square.x -= 5
    when 'right'
        square.x += 5
    end
show