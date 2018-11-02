# 代码包含在大括号或者do...end内被称为代码块
# 块只能跟在方法调用之后，例如块：block_te,那么必须使用block_te函数来调用
# block_name = {
#   #statements
#   puts 'this is code block'
# }

# yield语句
def test
  puts "You are in the method"
  yield                #执行代码块
  puts "You are again back to the method"
  yield                #执行代码块
end
test {puts "You are in the block"}

def test1
  yield 5            #执行代码块
  puts "You are in the method test"
  yield 100            #执行代码块
end
test1 {|i| puts "You are in the block #{i}"}

# 比较运算符。eql?:如果原参数与接收到的参数具有相同的类型和值，则返回 true。

puts 2.eql?(2.0)

# 并行赋值
a, b, c = 10, 20, 30
# 等价于
a=10
b=20
c=30

# 变量交换
a,b=b,a

# 三元运算符?:
a > b ? c = b : c = a

# 范围运算符，在Ruby中有两个范围运算符，分别是 ..和 …
# .. ：表示创建一个从开始点到结束点的范围（包含结束点）[]
# … ：表示创建一个从开始点到结束点的范围（不包含结束点）[)
# 1..10
# 创建从1到10的范围
# 1…10
# 创建从1到9的范围

# defined?运算符defined? 运算符是以调用相关方法的形式来判断传递的参数是否已经定义，如果表达式未定义则返回 nil，如果已定义则会返回参数描述。
a=100
puts 'a is defined?',defined? a
puts 'test is defined?',defined? test


# 点运算符和双冒号运算符
#在 Ruby 中类和方法都可以被当做常量来使用 :: 运算符： 可以使用一个模块名称和双冒号来引用一个常量； 双冒号运算符允许在类或模块内定义常量、实例方法和类方法，可以从类或模块外的任何地方进行访问。

CONST = ' out there'            #定义常量
class Inside_one
   CONST = proc {' in there'}
   def where_is_my_CONST
      ::CONST + ' inside one'    #引用常量
   end
end
class Inside_two
   CONST = ' inside two'
   def where_is_my_CONST
      CONST
   end
end
puts Inside_one.new.where_is_my_CONST
puts Inside_two.new.where_is_my_CONST
puts Object::CONST + Inside_two::CONST
puts Inside_two::CONST + CONST
puts Inside_one::CONST
puts Inside_one::CONST.call + Inside_two::CONST