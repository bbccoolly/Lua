
-- 挂起 suspended
-- 运行 running
-- 死亡 dead
-- 正常 normal


co  = coroutine.create(function()
		for i=1,10 do
			print('co 协程正在运行- '..i)
			coroutine.yield()
		end
	end)

print(coroutine.status(co))
coroutine.resume(co)
print(coroutine.status(co))
coroutine.resume(co)

