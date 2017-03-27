--类型和类型类
--万物皆有类型
--支持类型推导

--:t命令处理一个表达式的输出结果为表达式后跟::及其类型
--凡是明确的类型，其首字母必为大写

--Int 表示整数
--Integer 表示非常大的无界整数
--Float 表示单精度的浮点数
--Double 表示双精度的浮点数
--Bool 表示布尔值
--Char表示一个字符 一个字符由单引号括起
--[Char] 一组字符的List即为字符串

--类型变量
--ghci> :t head   
--head :: [a] -> a
--它是个类型变量，意味着a可以是任意的类型
--使用到类型变量的函数被称作“多态函数 ”

--类型类
--Eq这一类型类提供了判断相等性的接口
--函数以外的所有类型都属于Eq
--所以它们都可以判断相等性
--Ord包含可比较大小的类型

--Show的成员为可用字符串表示的类型
--show可以取任一Show的成员类型并将其转为字符串

--Read是与Show相反的类型类
--read函数可以将一个字符串转为Read的某成员类型

--ghci> read "5" :: Int    
--ghci> read "5" :: Float

--Enum的成员都是连续的类型--也就是可枚举
--Range中用到它的成员类型
--每个值都有后继子(successer)和前置子(predecesor)

--Bounded的成员都有一个上限和下限

--Num是表示数字的类型类，它的成员类型都具有数字的特征

--Integral 其中的成员类型有Int和Integer

--Floating仅包含浮点类型：Float和Double
