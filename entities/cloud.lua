local class = require "../lib/middleclass"

require "../loaders/images"
require "../entities/screen"

Cloud = class('Cloud') -- class generator
images = imageStore.cloudsImg

-- initializing a cloud object
function Cloud:_initialize()
  self.img = images[love.math.random(1, #images)]
  -- starting offset
  start = love.math.random(0, 1)
  -- speeds
  self.speedX = 50
  self.speedY = 60
  -- start position
  self.x = start * screen.screen_width
  self.y = start * screen.screen_height
  -- the way to move will depends on the offset
  if start == 0 then
    self.move = 1
  else
    self.move = -1
  end
end

function Cloud:_move(dt)
  -- move the cloud
  self.x  = self.x + self.move * self.speedX * dt
  self.y  = self.y + self.move * self.speedY * dt
end

function Cloud:_alive()
  if self.x > screen.screen_width or self.x < 0 then
    self = nil
  end
end
