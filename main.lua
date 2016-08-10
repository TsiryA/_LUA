function love.load(arg)
  -- body...
  image = love.graphics.newImage('medias/imgs/64_28.png')
  love.graphics.setNewFont(12)
  -- color all graphics
  love.graphics.setColor(10, 10, 10, 255)
  love.graphics.setBackgroundColor(255, 255, 255, 1)
  imageX = 100;
  imageY = 100;
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



function love.draw()
  -- body...
  love.graphics.draw(image, 200, 200)
  love.graphics.print('Click and drag around or use key', 100, 100)
end



function love.quit()
  -- body...
end
