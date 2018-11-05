# while循环
# 方式一
test = 1
while test < 10 do
  test += 1
  puts test
end

# 方式二
puts test += 1 while test < 20

# 方式三
begin
  test += 1
  puts test
end while test < 30

# until循环
# 方式一
until test < 20 do
  puts test
  test -= 1
end

# 方式二
puts test += 1 until test > 30

# 方式三
begin
  puts test
  test += 1
end until test > 40


# for循环
# 方式一
for i in 0 .. 5 do
  puts i
end

# 方式二
(0..5).each do |i|
  puts i
end


# break
for i in 0 .. 6 do
  if i > 2 then
    break
  end
  puts i
end

# next
for i in 0..6 do
  if i > 2 then
    next
  end
  puts i
end

# redo
for i in 0..5 do
  if i < 2 then
    puts "Value of local variable is #{i}"
    #  redo        #重新开始最内部循环的该次迭代，不检查循环条件
  end
end

# retry
# 如果 retry 出现在 begin 表达式的 rescue 子句中，则从 begin 主体的开头重新开始执行
# 如果 retry 出现在迭代内、块内或者 for 表达式的主体内，则重新开始迭代调用。迭代的参数会重新评估。

n = 0
begin
  puts 'Trying to do something'
  raise 'oops'      #抛出一个消息为"oops"的RuntimeError
rescue => ex        #捕捉异常，并将异常保存至ex变量
  puts ex           #打印异常消息
  n += 1
  retry if n < 3
end
puts "Ok, I give up"

for i in 0 .. 5 do
  if i < 2 then
    puts "Value of local variable is #{i}"
    #retry # ruby1.9以上，retry只能支持在rescue里面使用，不支持在block里面用
  end
end

# unless
x=1
unless x > 2
  puts "x is less than 2"
else
  puts "x is greater than 2"
end

# case语句
$age = 56
case $age                #比较指定的age
when 0 .. 2            #与0,1,2三个数字进行比较
  puts "baby"        #若匹配，则执行此句
when 3 .. 6
  puts "little child"
when 7 .. 12
  puts "child"
when 13 .. 18
  puts "youth"
else                    #若以上均不匹配
  puts "adult"        #则执行此句
end                    #不要忘了case…end