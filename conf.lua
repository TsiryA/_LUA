-- configuration files
function love.conf(t)
  t.title = 'shooter'
  t.version = "0.10.1"    -- Love version on use
  t.window.width = 480
  t.window.height = 700

  -- window configuration
  t.window.borderless = true
  t.window.resizable = false
  t.window.fullscreen = false
  -- standard fullscreen
  t.window.fullscreentype = "desktop"
  -- modules
  t.modules.audio = true             -- Enable the audio module (boolean)
  t.modules.event = true             -- Enable the event module (boolean)
  t.modules.graphics = true          -- Enable the graphics module (boolean)
  t.modules.image = true             -- Enable the image module (boolean)
  t.modules.joystick = true          -- Enable the joystick module (boolean)
  t.modules.keyboard = true          -- Enable the keyboard module (boolean)
  t.modules.math = true              -- Enable the math module (boolean)
  t.modules.mouse = true             -- Enable the mouse module (boolean)
  t.modules.physics = true           -- Enable the physics module (boolean)
  t.modules.sound = true             -- Enable the sound module (boolean)
  t.modules.system = true            -- Enable the system module (boolean)
  t.modules.timer = true             -- Enable the timer module (boolean)
  t.modules.window = true            -- Enable the window module (boolean)
  t.modules.thread = true            -- Enable the thread module (boolean)

  -- Debuggin
  t.console = true
end
