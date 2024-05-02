--!strict

local Object = require("Object Directory")


export type SharedObject = typeof(
	setmetatable(
		{} :: Members,
		{} :: Class
	)
)

export type Members = Object.Members & {
	
}

export type Class =  Object.Class & {
	__index : Class;
	new : () -> SharedObject;
}

local SharedObject : Class = {} :: Class
SharedObject.__index = SharedObject
setmetatable(SharedObject, Object)


function SharedObject.new() : SharedObject
	local self : SharedObject = setmetatable(Object.new() :: Members, SharedObject)
	
	return self
end


return SharedObject
