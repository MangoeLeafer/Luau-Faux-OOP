--!strict

local InsetObject = require("InsetObject Directory")


export type ClassName = typeof(
	setmetatable(
		{} :: Members,
		{} :: Class
	)
)

export type Members = InsetObject.Members & {
	
}

export type Class =  InsetObject.Class & {
	__index : Class;
	new : () -> ClassName;
}

local ClassName : Class = {} :: Class
ClassName.__index = ClassName
setmetatable(ClassName, InsetObject)


function ClassName.new() : ClassName
	local self : ClassName = setmetatable(InsetObject.new() :: Members, ClassName)
	
	return self
end

function ClassName:OnStart() : ()
	-- This function runs right after the script is done compiled by the sub-compiler.
end

function ClassName:OnRenderStepped(dt : number) : ()
	-- This function runs on every frame update.
end


return ClassName
