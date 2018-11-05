# 在面向对象的语言中继承是非常重要的，但是 Ruby 不直接支持继承，幸运的是 Ruby 的模块提供了 mixins 装置，而这几乎消除了对多重继承的需要。
module A
  def a1
    puts 'a1'
  end
  def a2
    puts 'a2'
  end
end
module B
  def b1
    puts 'b1'
  end
  def b2
    puts 'b2'
  end
end

class Sample
include A
include B
  def s1
    puts 's1'
  end
end
samp = Sample.new
samp.a1
samp.a2
samp.b1
samp.b2
samp.s1