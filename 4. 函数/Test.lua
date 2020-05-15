function funA( ... )
	-- body
	print("无参函数 - funA()")
end

function funB( a,b )
	-- body
	print("有参函数 - "..a+b)
end

function funC( a,b )
	-- body
	print("有参有返回值参数")
	return a*b
end
funA()
funB(1,2)
funC(2,3)

function funD( a,b,c )
	-- 参数默认值
	a = a or 1
	b = b or 2
	c = c or 3
	print("a - " .. a)
	print("b - " .. b)
	print("c - " .. c)
end

funD(10,20,nil)


function funE( ... )
	-- 不定参数函数
	local a,b,c,d,e = ...
	print("不定参数函数 a - "..a)
	print("不定参数函数 b - "..b)
	print("不定参数函数 c - "..c)
	print("不定参数函数 d - "..d)
	print("不定参数函数 e - "..e)
	return select("#",...)
end
print("不定函数长度 - "..funE(1,2,3))
