require "entities/screen"
media = {

  ------------------------------------------------------------------------------
  -- IMAGES
  ------------------------------------------------------------------------------
  on_srceen = function (img, x, y)
    width = img:getWidth()
    height = img:getHeight()
    if x > screen_width or width + x < 0 or y > screen_height or height + y < 0 then
      return false
    else
      return true
    end
  end
}
