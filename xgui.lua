-- Vector lib: https://pastebin.com/mdfDvmps

local oop = require("./oop")

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

xgui = {}

-- require("./widget/widgetBase")
require("./system/eventhandler")
require("./system/renderer")

local label_base = require("./widget/widgets/label")

local label = label_base(nil)
label.create()
label.draw(nil, nil)
label.destroy()

-- print("----- Metatable -----")
-- dump(getmetatable(label))
-- print("---------------------")
-- dump(label)

return label

-- return xgui