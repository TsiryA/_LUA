debug = true
require "entities/screen"
require "entities/player"
require "entities/cloud"

--------------------------------------------------------------------------------
-- HELPERS
--------------------------------------------------------------------------------
require "helpers/media"

--------------------------------------------------------------------------------
-- CLASS CONTAINER
--------------------------------------------------------------------------------
players   = {}
clouds    = {}
timer = nil
--------------------------------------------------------------------------------
-- MEDIA CONTAINER
--------------------------------------------------------------------------------
clouds_imgs = {}

function love.load(arg)
  ------------------------------------------------------------------------------
  -- VARIABLES
  ------------------------------------------------------------------------------
  timer = 0
  ------------------------------------------------------------------------------
  -- MEDIAS AND OBJECTS
  ------------------------------------------------------------------------------
  ------------------------------ NPC
  -- clouds
  cloud_images_max = 3
  for i=1, cloud_images_max,1 do
    clouds_imgs[i] = love.graphics.newImage('medias/imgs/world/cloud_' .. i .. '.png')
  end
  local_cloud = cloud
  local_cloud.images = clouds_images
  local_cloud.imgs_number = 3
  ------------------------------ PC
  local_player = player
  local_player.img = love.graphics.newImage('medias/imgs/player.png')

  ------------------------------------------------------------------------------
  -- LISTS
  ------------------------------------------------------------------------------
  ------------------------------ NPC
  clouds[#clouds + 1] = local_cloud:_generate()

  ------------------------------ PC
  players[#players + 1] = local_player
end


function love.update(dt)
  ------------------------------------------------------------------------------
  -- DEFAULTS
  ------------------------------------------------------------------------------
  if love.keyboard.isDown('escape') then
    love.event.push('quit')
  end

  ------------------------------------------------------------------------------
  -- NPCS
  ------------------------------------------------------------------------------
  -- set timer
  timer = timer + dt
  if timer == 65000 then
    timer = 0
    clouds[#clouds + 1] = local_cloud:_generate()
  end

  for i=1, #clouds,1 do
    clouds[i]:_move(dt)
    if media:on_srceen(clouds[i].img, clouds[i].x, clouds[i].y) then

    else
      table.remove(clouds, i)
    end
  end

  -- player mouvement
  if love.keyboard.isDown('up') then
    players[1]:move_top(dt)
  end

  if love.keyboard.isDown('down') then
    players[1]:move_back(dt)
  end

  if love.keyboard.isDown('left') then
    players[1]:move_left(dt)
  end

  if love.keyboard.isDown('right') then
    players[1]:move_right(dt)
  end

end

function love.draw(dt)
  -- Just test
  players[1]:_draw()
end

function love.quit()
  -- body...
end
