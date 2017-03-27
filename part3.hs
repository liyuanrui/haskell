--函数的语法

-- 模式匹配
luck :: (Num a) => a -> String
luck 1 = "Hello World"
luck 2 = "Hi World"
luck 3 = "Lr Cool"
--万能匹配
luck x = show x ++ " World"

-- 第一个递归
factorial :: (Num a) => a -> a
factorial 0 = 0
factorial n = n + factorial ( n - 1)

-- 元组模式匹配
addTuple :: (Num a) => (a,a) -> (a,a) -> (a,a)
addTuple (x1,y1) (x2,y2) = ( x1+x2, y1+y2 )

-- 三元组模式匹配
first :: (a,b,c) -> a
first ( x , _ , _ ) = x

-- List Comprehension模式匹配
-- [1,2,3]本质就是1:2:3:[]的语法糖
--
-- 自实现head、length、sum函数
head' :: [a] -> a
head' [] = error "Can't call head on an empty list!"
head' (x:_) = x
--
length' :: (Num b) => [a] -> b
length' [] = 0
length' (_:xs) =1 + length' xs
--
sum' :: (Num a) => [a] -> a
sum' [] = 0
sum' (x:xs) = x + sum'(xs)

-- as模式
-- 这个模式xs@(x:y:ys)，它会匹配出与x:y:ys对应的东西
-- 同时你也可以方便地通过xs得到整个list
capital :: String -> String
capital "" = "error"
capital all@(x:xs) = all ++ "'s First is " ++ [x]

-- 门卫 (guard)
-- 一个门卫就是一个布尔表达式
-- 如果为真，就使用其对应的函数体
-- 如果为假，就送去见下一个门卫
bmiTell :: (RealFloat a) => a -> a -> String
bmiTell x y
    | x/y^2 <= 18.5 = "1 你太瘦啦"
    | x/y^2 <= 25.0 = "2 你身体质量非常好"
    | x/y^2 <= 30.0 = "3 你简直是太重了"
    | otherwise = "4 你的体重已经突破天际"

--where关键字跟在门卫后面
--where是个语法结构
bmiTell' :: (RealFloat a) => a -> a -> String
bmiTell' x y
    | bmi <= 18.5 = "1 你太瘦啦"
    | bmi <= 25.0 = "2 你身体质量非常好"
    | bmi <= 30.0 = "3 你简直是太重了"
    | otherwise = "4 你的体重已经突破天际"
    where bmi = x/y^2

--Let in be
--let绑定则是个表达式
--允许你在任何位置定义局部变量
--let中绑定的只有in中可见

--Main> let luck x y z = x+y+z in luck 1 2 3
--Main> 4 * (let a = 9 in a + 1) + 2
--Main> [let square x = x * x in (square 5, square 3, square 2)] 
--Main> (let a = 100; b = 200; c = 300 in a*b*c, let foo="Hey "; bar = "there!" in foo ++ bar)

calcBmis :: (RealFloat a) => [(a, a)] -> [a]   
calcBmis xs = [bmi | (w, h) <- xs, let bmi = w / h ^ 2]

--case表达式
decase :: (Num a)=> a -> String
decase xs = case xs of 
    1 -> "1"
    2 -> "2"
    3 -> "3"


