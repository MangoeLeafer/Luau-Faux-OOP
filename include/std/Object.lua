--!strict

export type Object = typeof(
	setmetatable(
		{} :: Members,
		{} :: Class
	)
)

export type Members = {
	
}

export type Class =  {
	__index : Class;
	new : () -> Object;
    super : () -> Members;
}

local Object : Class = {} :: Class
Object.__index = Object


function Object.new() : Object
	local self : Object = setmetatable(Object.super(), Object)

	return self
end

function Object.super() : Members
    return {} :: Members
end


return Object
