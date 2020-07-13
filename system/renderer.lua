-- xGUI renderer functions
local comp = require("component")
local vector = require("./dependencies/vector")

xgui.renderer = {
    gpu = nil,
    screen = nil,
    res = nil,
    aspect = nil,
    redrawOnEventOnly = false,
    redrawTick = 20
}
xgui.widgets = {}

function xgui.setupRenderer()
    xgui.renderer.gpu = comp.gpu
    xgui.renderer.screen = xgui.renderer.gpu.getScreen()
    local width, height = xgui.renderer.gpu.getResolution()
    xgui.renderer.res = vector(width, height)
    xgui.renderer.aspect = xgui.renderer.res.x / xgui.renderer.res.y
end

function xgui.addWidget(widget)
    checkArg(1, widget, "table")
    xgui.widgets.insert(widget)     -- Add non-nil widget
end

function xgui.render()
    gpu.fill(1, 1, w, h, " ") -- Clear screen

    for i=1,len(xgui.widgets) do
        xgui.widgets[i].draw(xgui.renderer.gpu, xgui.renderer.screen)
    end
end