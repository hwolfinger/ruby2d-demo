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

show