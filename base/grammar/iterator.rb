# each 迭代器

arr1 = Array[1, 2, 3]
arr1.each {|i| puts 2 * i}

# 等价于
arr1.each do |i|
	puts 2 * i
end

# collect 迭代器
# each 迭代器连续访问集合中的每个元素，而 collect 迭代器从集合中获得各个元素，返回的结果生成新的集合

shuzu = Array[1,2,3,4]

shuzu_each = shuzu.each {|n| n=2*n}
shuzu_collect = shuzu.collect {|n| n=2*n}

puts "#{shuzu}"
puts "#{shuzu_each}"
puts "#{shuzu_collect}"
puts "#{shuzu}"

def reverse_words(str)
	str=str.reverse    # 反转整个句子
	shuzu=str.split()    # 以空格为分隔符，将 str 分割为多个子字符串，作为数组元素
	str=shuzu.collect{|x| x.reverse}.join(' ')  # 再对每个子字符串做反转，将数组元素合并为字符串，每个元素间插入空格
	puts str  # 打印出反转后的句子
end

print "enter your words: "
words=gets    # 输入句子

print "result: "
reverse_words(words)    # 调用 reverse_words 方法，处理句子