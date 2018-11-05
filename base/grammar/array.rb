# Ruby 中的数组从 0 开始编号，这与其它很多语言一样。数组中可以存储 String, Integer, Float 等类型的元素，甚至也可以是另一个数组。
# http://ruby-doc.com/docs/ProgrammingRuby/html/ref_c_array.html

shuzu_1 = Array.new     # 创建一个数组
shuzu_2 = Array.new(10) # 创建一个有 10 个元素的数组
shuzu_3 = Array.new(4,"test") # 4 个元素，每个元素都是 'test'
shuzu_4 = Array[1,2,3,4]  # 4 个元素的数组，给每个元素赋值

shuzu_1 = Array['a','b','c','d','e']
shuzu_2 = Array['c','d','f','g','e']

shuzu_3 = shuzu_1 & shuzu_2  # 两个数组的交集
shuzu_4 = shuzu_1 + shuzu_2  # 两数组连接
shuzu_5 = shuzu_1 | shuzu_2  # 两数组合并，去除重复
shuzu_6 = shuzu_1 - shuzu_2  # 两数组相减
shuzu_1.delete_at(3)         # 去除第 3 个元素
shuzu_7 = shuzu_1.insert(3,'d') # 在第 3 位置插入元素 'd'
shuzu_8 = shuzu_2.sort       # 对数组中的元素排序

shuzu_8.each {|x| puts x, ' === '}