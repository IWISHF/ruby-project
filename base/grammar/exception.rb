# rescue 语句
begin
  file = open("/不存在的文件")
  if file
    puts "File opened successfully"
  end
rescue
  file = STDIN
end
print file, "==", STDIN, "\n"

# retry 语句
fname = '/不存在的文件'
begin
  file = open(fname)
  if file
    puts "File opened successfully"
  end
rescue
  fname = "test_file.text"
  puts 'File opened failed'
  retry
end

# raise语句 ensure 语句
begin
  puts 'I am before the raise.'
  raise 'An error has occurred.'
  puts 'I am after the raise.'
rescue
  puts 'I am rescued.'
else #如果没有异常则执行
  puts 'I am else'
ensure
  puts 'I am ensure'
end
puts 'I am after the begin block.'
