=begin
转义字符
\a          报警符
\b          退格
\f          换页符
\n          换行符
\r          换行符
\s          空格符
\t          制表符
\v          垂直制表符
=end


puts "hello \a\a\a\a\a\a\a\a\a\a\a\a world"
puts "hello \b world"  # 删除\b前方一个字符
puts "hello \f world"
puts "hello\sworld"
puts "hello\tworld"
puts "hello\vworld"

# string 类常用内置方法
# http://ruby-doc.com/docs/ProgrammingRuby/html/ref_c_string.html

str1 = "I love Ruby"
str2 = str1.reverse     # 倒序
str3 = str1.delete("y") # 删除字符“y”
str4 = str1.sub("love","hate")  # 替换

puts str2
puts str3
puts str4