--!strict

export type Object = typeof(
	setmetatable(
		{} :: Members,
		{} :: Class
	)
)

export type Members = {
	name : string;
}

export type Class =  {
	__index : Class;
	new : () -> Object;

	ToString : (self : Object) -> string;
	GetClassName : (self : Object) -> string;
}

local Object : Class = {} :: Class
Object.__index = Object


function Object.new() : Object
	local self : Object = setmetatable({} :: Members, Object)
	
	return self
end

function Object:ToString() : string
	return self
end

function Object:GetClassName() : string
	return self.name
end


return Object
