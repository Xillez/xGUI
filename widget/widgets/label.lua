-- Label widget class

local oop = require("oop")
local component = require("component")
local vector = require("./dependencies/vector")
local widgetBase = require("./widget/widgetBase")
local colors = require("colors")

local label = {
    text = "",
    textColor = colors[colors.black],
    backgroundColor = colors[colors.white]
}
oop.inherit(label, widgetBase)

function label:construct(parent)       -- Constructor (executed in "oop" library)
	self.__index.construct(parent)
end

-- Lifecycle functions

function label.create()
    widgetBase.create(self)             -- Call baseclasses create function
end

function label.draw(screen, gpu)
    widgetBase.draw(self, screen, gpu)  -- Call baseclasses create function
end

function label.destroy()
    widgetBase.destroy(self)            -- Call baseclasses create function
end

-- Getters & Setters

function label.getText()
    return self.text
end

function label.setText(newText)
    checkArg(1, newText, "string")
    self.text = newText
end

function label.getTextColor()
    return self.textColor
end

function label.setTextColor(color)
    checkArg(1, color, "table")
    self.textColor = color
end

function label.getBackgroundColor()
    return self.backgroundColor
end

function label.setBackgroundColor(color)
    checkArg(1, color, "table")
    self.backgroundColor = color
end

return label