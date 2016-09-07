debug = true
require "entities/player"
require "entities/cloud"
require "loaders/images"
-- storage
players = {}
playersImg = imageStore.playersImg
clouds = {}
setToNul = 0

-- helpers shortcut
local _helpers = helpers

-- initiates
local offset_clock = 5
clock = offset_clock

function love.load(arg)
  -- Load medias
  players[#players + 1] = player
  players[1].img = playersImg[love.math.random(1, #playersImg)]
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

  for i, cloud in ipairs(clouds) do
    if cloud == nil then
      setToNul = setToNul + 1
    end
    cloud:_move(dt)
    cloud:_alive()
  end

  if clock <= 0 then
    clouds[#clouds + 1] = Cloud:new()
    clouds[#clouds]:_initialize()
    clock = offset_clock
  else
    clock = clock - dt
  end

end

function love.draw(dt)
  -- Just test
  love.graphics.draw(players[1].img, players[1].x, players[1].y)
  for i, cloud in ipairs(clouds) do
    love.graphics.draw(cloud.img, cloud.x, cloud.y)
  end
  love.graphics.setColor(255, 255, 255, 255)
  love.graphics.print(clock, 100, 100)
  love.graphics.print(#clouds, 400, 100)
  love.graphics.print(setToNul, 400, 150)

end

function love.quit()
  -- body...
end
