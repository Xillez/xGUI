-- xGUI Widget base object

local oop = require("oop")
local component = require("component")
local vector = require("./dependencies/vector")

local widgetBase = {
	parent = nil,               -- Parent widget
    children = nil,             -- Children widgets
    layout = nil,               -- COMING FEATURE. Layout attached to this widget determins positioning and other visual attributes in its children
	position = vector(0, 0),    -- Widget position
    dimention = vector(0, 0),   -- Widget dimention
    center = vector(0, 0)       -- Widget center position
}
--oop.make(widgetBase)

function widgetBase:construct(parent)       -- Constructor (executed in "oop" library)
	self.parent = parent
	self.children = {}
	if (self.parent) then
        -- TODO: Add parent related setup here
	end
end

-- Lifecycle functions

function widgetBase.create()
    --
end

function widgetBase.draw(screen, gpu)
    print("Widgetbase draw")
end

function widgetBase.destroy()
    --
end

-- Getters & Setters

function widgetBase.getParent()
    return self.parent
end

function widgetBase.setParent(newParent)
    checkArg(1, newParent, "table", "nil")
    self.parent = newParent
end

function widgetBase.getChildren()
    return self.children
end

function widgetBase.setChildren(newChildren)
    checkArg(1, newChildren, "table", "nil")
    self.children = newChildren
end

function widgetBase.addChild(child)
    checkArg(1, child, "table")
    table.insert(self.children, child)
end

function widgetBase.getPosition()
    return self.position
end

function widgetBase.setPosition(newPos)
    checkArg(1, newPos, "table", "nil")
    self.position = newPos
end

function widgetBase.getDimention()
    return self.dimention
end

function widgetBase.setDimention(newDim)
    checkArg(1, newDim, "table", "nil")
    self.dimention = newDim
end

function widgetBase.getCenter()
    return self.center
end

function widgetBase.setCenter(newCenter)
    checkArg(1, newCenter, "table", "nil")
    self.center = newCenter
end

return widgetBase