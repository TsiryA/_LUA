function love.load(arg)
  -- body...
  image = love.graphics.newImage('image.jpg')
  love.graphics.setNewFont(12)
  love.graphics.setColor(0, 0, 0, 1)
  love.graphics.setBackgroundColor(255, 255, 255, 1)
end


function love.draw()
  -- body...
  love.graphics.draw(image, imageX, imageY)
  love.graphics.print('Click and drag around or use key', 100, 100)
end

function love.update(dt)
  -- body...
  if love.keyboard.isDown('UP') then
    num = num + 100 * dt
  end
end

function love.mousepressed(x, y, button, isTouch)
  -- body...
  if button == 1 then
    imgX = x
    imgY = y
  end
end


function love.quit()
  -- body...
end
