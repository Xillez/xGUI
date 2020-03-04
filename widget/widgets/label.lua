-- Label widget class

local oop = require("oop")
local component = require("component")
local vector = require("./dependencies/vector")
local widgetBase = require("./widget/widgetBase")
local colors = require("colors")

local label = {
    text = "",
    textColor = nil,
    backgroundColor = nil
}
oop.inherit(label, widgetBase)

function label:construct(parent)       -- Constructor (executed in "oop" library)
	widgetBase.construct(self, parent)

    textColor = colors[colors.black]
    backgroundColor = colors[colors.white]
end

-- Lifecycle functions

function dump(t, level)
    level = level or 0
    for i,v in pairs(t) do
        io.write(string.rep('  ', level))
        io.write(i..': ')
        if (type(v) == 'table') then
            print ''
            dump(v, level + 1)
        else
            print(tostring(v))
        end
    end
end

function label:create()
    dump(getmetatable(label)) 
    widgetBase.create(self)
end

function label:draw(screen, gpu)
    widgetBase.draw(self, screen, gpu)
end

function label:destroy()
    widgetBase.destroy(self)
end

-- Getters & Setters

function label:getText()
    return self.text
end

function label:setText(newText)
    checkArg(1, newText, "string")
    self.text = newText
end

function label:getTextColor()
    return self.textColor
end

function label:setTextColor(color)
    checkArg(1, color, "table")
    self.textColor = color
end

function label:getBackgroundColor()
    return self.backgroundColor
end

function label:setBackgroundColor(color)
    checkArg(1, color, "table")
    self.backgroundColor = color
end

return label