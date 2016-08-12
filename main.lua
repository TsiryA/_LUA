debug = true

-- storage
player = {x = 200, y = 610, speed = 150 , img = nil}

function love.load(arg)
  -- Load medias
  player.img = love.graphics.newImage('medias/imgs/player.png')
  -- Load variables
end

function love.update(dt)

end

function love.draw(dt)
  -- Just test
  love.graphics.draw(player.img, player.x, player.y)
end

function love.quit()
  -- body...
end
