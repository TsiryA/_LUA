local class = require "../lib/middleclass"

require "../loaders/images"
require "../entities/screen"

local Cloud = class('Cloud') -- class generator
local images = imageStore.cloudsImg

-- initializing a cloud object
function Cloud:_initialize()
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
