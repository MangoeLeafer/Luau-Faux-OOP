--!strict

local SharedObject = require("SharedObject Directory")


export type TestLibrary = typeof(
	setmetatable(
		{} :: Members,
		{} :: Class
	)
)

export type Members = SharedObject.Members & {
	
}

export type Class =  SharedObject.Class & {
	__index : Class;
	new : () -> TestLibrary;
}

local TestLibrary : Class = {} :: Class
TestLibrary.__index = TestLibrary
setmetatable(TestLibrary, SharedObject)


function TestLibrary.new() : TestLibrary
	local self : TestLibrary = setmetatable(SharedObject.new() :: Members, TestLibrary)
	
	return self
end


return TestLibrary
