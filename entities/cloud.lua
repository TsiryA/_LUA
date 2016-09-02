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
    start = love.math.random(0, 1)
    -- select an image
    self.img = self.images[love.math.random(1, #self.images)]
    -- setting starting position
    self.y = love.math.random(0, screen.screen_height)
    -- the x start should determine the direction
    -- we assume that it only go straight to the bottom
    self.x = start * screen.screen_width
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
