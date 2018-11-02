class Customer
  @@no_of_customer = 0
  # ruby 的构造函数
  def initialize(variable)
    @name = variable
  end

  def hello(id, name, addr)
    @cust_id = id
    @cust_name = name
    @cust_addr = addr
  end

  def print_hello
    puts @name
  end
end

=begin
以 @@ 开始的是类成员变量

以 @ 开始的是实例变量
以 $ 开始的是全局变量
以小写或者是 _ 开头的是局部变量
=end

# Crete class instance

customer1 = Customer.new('danny') # way: 1

customer2 = Customer. new('sol') # way: 2

customer1.print_hello
customer2.print_hello