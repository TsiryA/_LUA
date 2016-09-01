require "entities/screen"
player = {
  -- attributes
  x = 0,
  y = 0,
  speed = 150,
  img = nil,
  level = 0,

  -- functions
  ---- mouves ----
  -- left move
  move_left = function (self, dt)
    self.x = self.x - self.speed * dt
    if self.x <= 0 then
      self.x = 0
    end
  end,

  -- right move
  move_right = function (self, dt)
    self.x = self.x + self.speed * dt
    if self.x >= love.graphics.getWidth() - 50 then
      self.x = love.graphics.getWidth() - 50
    end
  end,

  -- advance
  move_top = function (self, dt)
    self.y = self.y - self.speed * dt
    if self.y <= 0 then
      self.y = 0
    end
  end,

  -- backward
  move_back = function (self, dt)
    self.y = self.y + self.speed * dt
    if self.y >= love.graphics.getHeight() - 50 then
      self.y = love.graphics.getHeight() - 50
    end
  end,

  -- draw the player
  _draw = function (self)
    love.graphics.draw(self.img, self.x, self.y)
  end,
}
