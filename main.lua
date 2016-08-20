debug = true
require "entities/player"

-- storage
players = {}

function love.load(arg)
  -- Load medias
  players[#players + 1] = player
  players[1].img = love.graphics.newImage('medias/imgs/player.png')
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

end

function love.draw(dt)
  -- Just test
  love.graphics.draw(players[1].img, players[1].x, players[1].y)
end

function love.quit()
  -- body...
end
