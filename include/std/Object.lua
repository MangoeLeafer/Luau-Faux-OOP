--!strict

export type Class = {__index : Class; __newindex : Class;} & Constructor
export type Object = typeof(
	setmetatable(
		{} :: Members,
		{} :: Class
	)
)
type Constructor = {new : (...any) -> Object}
type Summary = {
	-- Static Properties:

	-- Non-Static Properties:

	-- Static Methods:

	-- Non-Static Methods:
}


local Object : Class = {} :: Class
Object.__index = Object


function Object.new(...: any) : Object
	local self : Object = setmetatable(Object.super(), Object)

	return self
end


return Object
