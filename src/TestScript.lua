--!strict

local InsetObject = require("InsetObject Directory")


export type TestScript = typeof(
	setmetatable(
		{} :: Members,
		{} :: Class
	)
)

export type Members = InsetObject.Members & {
	
}

export type Class =  InsetObject.Class & {
	__index : Class;
	new : () -> TestScript;
}

local TestScript : Class = {} :: Class
TestScript.__index = TestScript
setmetatable(TestScript, InsetObject)


function TestScript.new() : TestScript
	local self : TestScript = setmetatable(InsetObject.new() :: Members, TestScript)
	
	return self
end

function TestScript:OnStart() : ()
	-- This function runs right after the script is done compiled by the sub-compiler.
end

function TestScript:OnRenderStepped(dt : number) : ()
	-- This function runs on every frame update.
end


return TestScript
