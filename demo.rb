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

sprite = Sprite.new(
    'character.png',
    x: 100,
    y: 380,
    clip_width: 60,
    animations: { fly: 1..3}
)

sound = Sound.new ('jump.ogg')

music = Music.new("background_music.ogg", loop: true)
music.play

Text.new(
    'fly fly fly',
    x: 350,
    y: 40,
    size: 36,
    color: 'white'
)

on :key_held do |event|
    sprite.play(animation: :fly)
    
    case event.key
    when 'up'
        sprite.y -= 5
    when 'down'
        sprite.y += 5
    when 'left'
        sprite.x -= 5
    when 'right'
        sprite.x += 5
    end
end

on :key_up do
    sprite.stop
end

on :key_down do
    sound.play
end

show