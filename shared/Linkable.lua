--!strict

local Object = require(script.Parent:WaitForChild("Object"))

--#region [Type Definitions]
export type Object = Object.Object & typeof(setmetatable({} :: Members, {} :: Interface))
type Members = {

}
type Static = {

}
type Interface = {
    -- [Constructor]
    new : () -> Object;
    __index : Interface;

    -- [Non-Static Methods]


    -- [Static Methods]

}
--#endregion


-- [Implementing Interface]
local Static : Static = {} :: Static
local Linkable : Interface = {} :: Interface
Linkable.__index = Linkable
setmetatable(Linkable, Object)


-- [Constructor]
function Linkable.new()
    local self : Object = setmetatable(Object.new() :: any, Linkable)
    return self
end

-- [Non-Static Methods]


-- [Static Methods]



return Linkable
