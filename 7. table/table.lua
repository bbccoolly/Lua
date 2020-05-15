--1. 初始化 1
a = {3,5,7,9,"a","b",nil,"c",nil}
len = #a
for i=1,len do
	--print("table 初始化 - "..a[i].." table 长度 -"..len)
end

--2. 初始化 2
b = {x = 3,y = "lcz",z = 5}
--print(b.x)
--print(b["y"])

--3. 二维数组
c = {{1,2,3},{"aa","bb","cc"}}
c[3] = {"羽","化","青","金"}
len = #c --table.maxn(c) deprecation
print("二维数组长度 - "..len)
for i=1,len do
	local temp = c[i]
	local tempLen = #temp
	for j=1,tempLen do
		--print("子数组 - "..i.." - "..temp[j])
	end
end


--4. 表遍历
for k,v in next,a do
	--print("表遍历 - "..k.." - "..v)
end

for i,v in ipairs(a) do --ipairs 只能打印 value 表
	--print(i,v)
end

for k,v in pairs(b) do --pairs 可以打印 key,value 类型表
	--print(k,v)
end

--5. table 插入和删除
d = {1,3,5,7,9}
function prinfTable( ... )
	for i,v in ipairs(d) do
		print("table 中的元素 - "..i,v)
	end
	-- body
end
--5.1 table.insert(table,index,value) 不加 index 时，插入末位
--table.insert(d,2,0)
prinfTable()


--5.2 table.remove(table,index) 不加 index 时，删除末位元素
rD = table.remove(d) -- 删除可以有返回值
prinfTable()
