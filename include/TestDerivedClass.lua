
--!strict

local TestLibrary = require("TestLibrary Directory")


export type TestDerivedClass = typeof(
	setmetatable(
		{} :: Members,
		{} :: Class
	)
)

export type Members = TestLibrary.Members & {
	
}

export type Class =  TestLibrary.Class & {
	__index : Class;
	new : () -> TestDerivedClass;
}

local TestDerivedClass : Class = {} :: Class
TestDerivedClass.__index = TestDerivedClass
setmetatable(TestDerivedClass, TestLibrary)


function TestDerivedClass.new() : TestDerivedClass
	local self : TestDerivedClass = setmetatable(TestLibrary.new() :: Members, TestDerivedClass)
	
	return self
end


return TestDerivedClass
