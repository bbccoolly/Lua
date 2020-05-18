--读取文件 io.open
function openFile( ... )
	-- body
	file,msg = io.open("C:\\Users\\86150\\Desktop\\lua基础学习\\8. lua 文件操作\\fileName.txt","r") -- r 读取，w 覆盖，a 追加
	if not file then print(msg) end
end


function writeFile()
	-- body
	file = io.open("C:\\Users\\86150\\Desktop\\lua基础学习\\fileName.txt","w")
	file:write("Hello Lua")
	file:flush()
	file:close()
end

