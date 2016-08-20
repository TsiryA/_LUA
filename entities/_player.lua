player = {
  -- attributes
  x = 0,
  y = 0,
  speed = 150,
  img = nil,

  -- functions
  ---- mouves ----
  -- left move
  move_left = function (dt)
    self.x = self.x - self.speed * dt
    if self.x <= 0 then
      self.x = 0
    end
  end,

  -- right move
  move_right = function (dt)
    self.x = self.x + self.speed * dt
    if self.x >= love.graphics.getWidth() - 50 then
      self.x = love.graphics.getWidth() - 50
    end
  end,

  -- advance
  move_top = function (dt)
    self.y = self.y - self.speed * dt
    if self.y <= 0 then
      self.y = 0
    end
  end,

  -- backward
  move_back = function (dt)
    self.y = self.y + self.speed * dt
    if self.y >= love.graphics.getHeight() - 50 then
      self.y = love.graphics.getHeight() - 50
    end
  end,
  
}
