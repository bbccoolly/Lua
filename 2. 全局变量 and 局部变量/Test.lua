
-- 局部变量 local x = 1
-- 全局变量 a = 3

function fun()
	--print("a - " .. a)
	funA()
	funB()
	print("a - " .. a)
	-- body
end

function funA( ... )
	-- body
	a = 7
end

function funB( ... )
	-- body
	local a = 9
end

fun()

require("TestA")
print("TestA - " .. a)