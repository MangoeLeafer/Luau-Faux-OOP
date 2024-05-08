--!strict

--#region [Type Definitions]
export type Object = typeof(setmetatable({} :: Members, {} :: Interface))
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
local Object : Interface = {} :: Interface
Object.__index = Object


-- [Constructor]
function Object.new()
    local self : Object = setmetatable({} :: Members, Object)
    return self
end

--[Non-Static Methods]


--[Static Methods]



return Object
