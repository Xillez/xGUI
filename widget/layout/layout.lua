-- xGUI widget layout object

local oop = require("oop")
local component = require("component")
local vector = require("vector")

local layout = {
    
    CENTER_HORIZONTAL = 1,
    CENTER_VERTICAL = 1,
    

	position = vector(0, 0),
    dimention = vector(0, 0),
    center = vector(0, 0)
}
oop.make(widgetBase)

function widgetBase:construct(parent)       -- Constructor (executed in "oop" library)
	self.parent = parent
	self.children = {}
	if (self.parent) then
        -- TODO: Add parent related setup here
	end
end