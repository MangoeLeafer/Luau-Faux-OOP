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
local LinkBehavior : Interface = {} :: Interface
LinkBehavior.__index = LinkBehavior
setmetatable(LinkBehavior, Object)


-- [Constructor]
function LinkBehavior.new()
    local self : Object = setmetatable(Object.new() :: any, LinkBehavior)
    return self
end

-- [Non-Static Methods]


-- [Static Methods]



return LinkBehavior
