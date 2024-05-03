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
	new : (...any) -> Object;
    super : (...any) -> Members;
}

local Object : Class = {} :: Class
Object.__index = Object


function Object.new(...: any) : Object
	local self : Object = setmetatable(Object.super(), Object)

	return self
end

function Object.super(...: any) : Members
    return {} :: Members
end


return Object
