require "../modules/helpers"
local _help = helpers
-- racine of images path
racinePath = 'medias/imgs/'

-- object of storage
imageStore = {}
-- function to add files in a folder into an array

-- images for players
playerPath = racinePath .. 'players/'
-- add all players image file to player array
imageStore.playersImg = _help.loadImages(playerPath)

-- images for clouds
cloudsPath = racinePath .. 'clouds/'
-- add all clouds image file to clouds array
imageStore.cloudsImg = _help.loadImages(cloudsPath)
