--1 交换赋值
a,b = 10,15
print("交换赋值 前- "..a)
print("交换赋值 前- "..b)
a,b =b,a
print("交换赋值 后- "..a)
print("交换赋值 后- "..b)


--2 函数多返回赋值
function funAB( a,b )
	-- body
	return a*2,b*3
end
c,d = funAB(2,3)
print("函数多返回赋值 - "..c)
print("函数多返回赋值 - "..d)


--3 代码块 do..end -> 用于区分全局和本地
function funS1()
	s = 10
	do
	-- body
		local s = 11
		print("代码块 s1- "..s)
	end
end
function funS2( ... )
	print("代码块 s2- "..s)
	-- body
end
funS1()
funS2()


--4 分支语句
a,b = 1,2
if a > b then
	print("分支语句 .. a > b")
elseif(a < b) then
	print("分支语句 .. a < b")
else
	print("分支语句 .. a = b")
end

--5 循环语句
----5.1 while .. end
a,b = 3,9
while a < b do
	print("while .. end - " .. a)
	a = a+1
end


----5.2 repeat .. until
c,d = 3,9
repeat
	print("repeat .. util - "..c)
	c = c+1
until c>d -- 此时跳出循环

----5.3 for .. end
function funFor( ... )
	print("调用 for .. end - 10")
	-- body
	return 10
end
for i=1,funFor(),2 do
	repeat
		if i == 3 then
			break
		end
		print('for .. end - '..i)
	until true
end
