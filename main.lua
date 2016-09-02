debug = true
require "entities/player"
require "entities/cloud"
require "loaders/images"
-- storage
players = {}
playersImg = imageStore.playersImg
cloud1 = cloud

function love.load(arg)
  -- Load medias
  players[#players + 1] = player
  players[1].img = playersImg[love.math.random(1, #playersImg)]
  cloud1:_generate()
  -- Load variables
end


function love.update(dt)
  -- default actions
  if love.keyboard.isDown('escape') then
    love.event.push('quit')
  end
  -- player mouvement
  if love.keyboard.isDown('up') then
    players[1]:move_top(dt)
  end

  if love.keyboard.isDown('down') then
    players[1]:move_back(dt)
  end

  if love.keyboard.isDown('left') then
    players[1]:move_left(dt)
  end

  if love.keyboard.isDown('right') then
    players[1]:move_right(dt)
  end

  cloud1:_move(dt)

end

function love.draw(dt)
  -- Just test
  love.graphics.draw(players[1].img, players[1].x, players[1].y)
  love.graphics.draw(cloud1.img, cloud1.x, cloud1.y)

end

function love.quit()
  -- body...
end
