=begin
模块在 Ruby 里面有两个作用：
第一：把功能相似的函数放在同一个名称之下；
第二：方便调用方法。
=end

module Hello # 模块名首字母大写
  def self.hello_ruby
    print 'Hello ruby!'
  end
  def self.hello_java
    print 'hello java'
  end
end
