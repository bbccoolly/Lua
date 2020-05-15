-- 算术运算符
function funA( a,b )
	-- body
	a = a or 1
	b = b or 1
	c = a / b
	c1 = math.floor(c)
	c2 = math.ceil(c)
	c3 = math.ceil(c)
	return c2
end

print("算术运算符 - "..funA(3,2))

-- 关系运算符 > < = ~=

--逻辑运算符 and or 

--三目运算符
a = 1
b = 2
c = a>b and a or b
print("三目运算符 - "..c)