debug = true

-- storage
player = {x = 200, y = 610, speed = 150 , img = nil}

function love.load(arg)
  -- Load medias
  player.img = love.graphics.newImage('medias/imgs/player.png')
  -- Load variables
end

function love.update(dt)
  player.x = player.x + 100*dt
  if player.x >= 480 then
    player.x = -110
    player.y = love.math.random(610)
  end
  if love.keyboard.isDown('escape') then
    love.event.push('quit')
  end
  if love.keyboard.isDown('left') then
    player.x = player.x - 100*dt
  end
  if love.keyboard.isDown('right') then
    player.x = player.x + 100*dt
  end
end

function love.draw(dt)
  -- Just test
  love.graphics.draw(player.img, player.x, player.y)
end

function love.quit()
  -- body...
end
