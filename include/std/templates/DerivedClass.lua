
--!strict

local BaseClass = require("BaseClass Directory")


export type ClassName = typeof(
	setmetatable(
		{} :: Members,
		{} :: Class
	)
)

export type Members = BaseClass.Members & {
	
}

export type Class =  BaseClass.Class & {
	__index : Class;
	new : () -> ClassName;
}

local ClassName : Class = {} :: Class
ClassName.__index = ClassName
setmetatable(ClassName, BaseClass)


function ClassName.new() : ClassName
	local self : ClassName = setmetatable(BaseClass.new() :: Members, ClassName)
	
	return self
end


return ClassName
