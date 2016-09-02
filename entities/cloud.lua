require "../loaders/images"
require "../entities/screen"
cloud = {
  ------------------------------------------------------------------------------
  -- GOBALS
  ------------------------------------------------------------------------------
  images = imageStore.cloudsImg, -- this array will contain all clouds images put at least 1 image
  screen_width = love.graphics.getWidth(),
  screen_height = love.graphics.getHeight(),

  ------------------------------------------------------------------------------
  -- LOCALS
  ------------------------------------------------------------------------------
  x = 0,
  y = 0,
  img = nil,
  speedX = 50,
  speedY = 60,
  move = nil,

  ------------------------------------------------------------------------------
  -- Generate a cloud
  ------------------------------------------------------------------------------
  _generate = function (self)
    -- select an image
    self.img = self.images[love.math.random(1, #self.images)]
    -- decide here if the cloud will come from the top or the bottom
    start = love.math.random(0, 1)
    -- set offsets
    self.x = start * screen.screen_width
    self.y = start * screen.screen_height
    -- the way to move will depends on the offset
    if start == 0 then
      self.move = 1
    else
      self.move = -1
    end
  end,

  ------------------------------------------------------------------------------
  -- MOVE
  ------------------------------------------------------------------------------
  _move = function (self, dt)
    -- move the cloud
    self.x  = self.x + self.move * self.speedX * dt
    self.y = self.y + self.speedY * dt
  end,

}
