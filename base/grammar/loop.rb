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