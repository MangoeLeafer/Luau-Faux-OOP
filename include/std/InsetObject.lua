--!strict

local Object = require("Object Directory")


export type InsetObject = typeof(
	setmetatable(
		{} :: Members,
		{} :: Class
	)
)

export type Members = Object.Members & {
	
}

export type Class =  Object.Class & {
	__index : Class;
	new : () -> InsetObject;

	onStart : (self : InsetObject) -> ();
	onRenderStepped : (self : InsetObject, deltaTime : number) -> ();
	onStepped : (self : InsetObject, time : number, deltaTime : number) -> ();
	onHearbeat : (self : InsetObject, deltaTime : number) -> ();
}

local InsetObject : Class = {} :: Class
InsetObject.__index = InsetObject
setmetatable(InsetObject, Object)


function InsetObject.new() : InsetObject
	local self : InsetObject = setmetatable(Object.new() :: Members, InsetObject)
	
	return self
end


return InsetObject
