--!strict

local BaseClass = require("BaseClass Directory")


export type ClassName = typeof(
	setmetatable(
		{} :: DerivedMembers,
		{} :: DerivedClass
	)
)

export type Members = {
	referenceTag : string;
	referencedInstance : Instance;
}

export type Class = {
	__index : DerivedClass;
	new : () -> ClassName;
}

type DerivedMembers = BaseClass.Members & Members

type DerivedClass = typeof(
    setmetatable(
        {} :: Class,
        {} :: BaseClass.Class
    )
)

local ClassName : DerivedClass = setmetatable({} :: Class, BaseClass)
ClassName.__index = ClassName


function ClassName.new() : ClassName
	local self : ClassName = setmetatable(BaseClass.new() :: any, ClassName)

	return self
end


return ClassName
