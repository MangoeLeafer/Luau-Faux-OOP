--!strict

local SharedObject = require("SharedObject Directory")


export type ClassName = typeof(
	setmetatable(
		{} :: Members,
		{} :: Class
	)
)

export type Members = SharedObject.Members & {
	
}

export type Class =  SharedObject.Class & {
	__index : Class;
	new : () -> ClassName;
}

local ClassName : Class = {} :: Class
ClassName.__index = ClassName
setmetatable(ClassName, SharedObject)


function ClassName.new() : ClassName
	local self : ClassName = setmetatable(SharedObject.new() :: Members, ClassName)
	
	return self
end


return ClassName
