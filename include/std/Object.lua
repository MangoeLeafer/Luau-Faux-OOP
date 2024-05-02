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
}

local Object : Class = {} :: Class
Object.__index = Object


function Object.new() : Object
	local self : Object = setmetatable({} :: Members, Object)
	
	return self
end


return Object
