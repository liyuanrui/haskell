--入门

--逻辑运算也同样直白
-- && 指逻辑与
-- ||    指逻辑或
-- not指逻辑否

--函数调用的形式是函数名，空格，空格分隔的参数表
--ghci> succ 8
--函数调用拥有最高的优先级

--前缀函数   min 1 6
--中缀函数   1 `min` 6
--后缀函数   

--第一个函数
--doubleMe x = x + x

--if else
--double x = (if x > 100 then x else x*2) + 1

--let关键字来定义一个常量
--在ghci下执行let a =1与在脚本中编写a=1是等价的

--:运算符可以连接一个元素到一个List或者字符串之中，而++运算符则是连接两个List

--head返回一个List的头部
--tail返回一个LIst的尾部
--last返回一个LIst的最后一个元素
--init返回一个LIst出去最后一个元素的部分
--length返回一个List的长度
--null检查一个List是否为空
--reverse将一个List反转
--take返回一个List的前几个元素
--maximum返回一个List中最大的那个元素。miniimun返回最小的
--sum返回一个List中所有元素的和
--elem判断一个元素是否在包含于一个List

--包含1到20中所有自然数的List
--[1..20]

--Range步长
--[1,2..10]   == [1,2,3,4,5,6,7,8,9,10]
--[1,3..10]   == [1,3,5,7,9]

--cycle接受一个List做参数并返回一个无限List

--repeat接受一个值作参数，并返回一个仅包含该值的无限List

--List Comprehension
--ghci> [x*2 | x <- [1..10]] 
--ghci> [x*2 | x <- [1..10], x*2 >= 12]
--boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]

--ghci> [ x*y | x <- [2,5,10], y <- [8,10,11]]
--_表示我们并不关心从List中取什么值

--在Tuple里可以存入多类型项的组合
--fst返回一个序对的首项
--snd返回序对的尾项

--ghci> zip [1,2,3,4,5] [5,5,5,5,5] 
--[(1,5),(2,5),(3,5),(4,5),(5,5)]







