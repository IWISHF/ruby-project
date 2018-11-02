# ruby 中的方法必须以小写字母开头
# 定义在类定义之外的方法为私有的，在类定义范围内的为共有方法

class Main
  def task
    puts 'method name must lowercase'
  end
  # 定义方法，参数可初始化
  def test(arg1 = 'hello', arg2 = 'world')
    puts "#{arg1} #{arg2}"
  end

  # 返回值
  def re_test
    i = 20
    j = 30
    return i + j
  end

  # 可变数量的参数声明方法
  def decla_te(*decla)
    puts "The nubmer of parameters is #{decla.length}"
    for item in decla do
      puts "Ths parameter is #{item}"
    end
  end
end

main = Main.new
main.task
main.test('hello', 'danny')
puts 'return value: ', main.re_test()
main.decla_te 'i', 'am', 'danny'