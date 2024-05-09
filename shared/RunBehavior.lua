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
local RunBehavior : Interface = {} :: Interface
RunBehavior.__index = RunBehavior
setmetatable(RunBehavior, Object)


-- [Constructor]
function RunBehavior.new()
    local self : Object = setmetatable(Object.new() :: any, RunBehavior)
    return self
end

-- [Non-Static Methods]


-- [Static Methods]



return RunBehavior
