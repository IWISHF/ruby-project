# -*- coding: UTF-8 -*-
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


# throw 和 catch
# catch和throw用于跳出一些嵌套结构
arr = ["a","b","c","d","e","f"]

def test(words)
  for x in words do
    throw :hello,1 if x == "d"
    print x
  end
end

catch :hello do
  test(arr)
end

# Exception 类，共有7类不同类型。我们自己创建的异常类，必须是Exception 类的子类或其子类的子类。
=begin
Interrupt
NoMemoryError
SignalException
ScriptError
StandardError
SystemExit
=end
# 类继承
class FileSaveError < StandardError
  attr_reader :reason
  def initialize(reason)
     @reason = reason
  end
end