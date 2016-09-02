helpers = {}

-- load all images in the folder
-- helpers.loadImages(folder)
-- @params(folder) string, the path of the folder from root project
helpers.loadImages = function(folder)
	local lfs = love.filesystem
  fileArray = {}
	local filesTable = lfs.getDirectoryItems(folder)
	for i,v in ipairs(filesTable) do
		local file = folder..'/'..v
		if lfs.isFile(file) then
			fileArray[#fileArray + 1] = love.graphics.newImage(file)
		end
	end
	return fileArray
end
