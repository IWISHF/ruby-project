# 全局变量， 未初始化的全局变量值为空，全局变量能够跨类使用
$global_var = 10
class One
  # 类变量是类的一个属性，必须初始化后才能使用，类变量可以跨越不同实例使用
  @@no_of_customers = 0
  def initialize(id, name, addr)
    # 实例变量，可以跨任何特定的实例或对象中的方法访问
    @cust_id = id
    @cust_name = name
    @cust_addr = addr
  end

  def print_global
    puts "Global variables in Class one is #$global_var"
  end

  def display_details
    puts "customer id #@cust_id"
    puts "customer name #@cust_name"
    puts "customer addr #@cust_addr"
  end

  def total_no_of_customers
    @@no_of_customers += 1
    puts "Total nubmer of customers: #@@no_of_customers"
  end
end

class Two
  def print_global
    puts "Global variables in Class one is #$global_var"
  end
end

one = One.new('10009', 'danny', 'Shanghai')
one = One.new('10008', 'asly', 'Shanghai')
two = Two.new

one.print_global
one.display_details
one.total_no_of_customers
one.total_no_of_customers
two.print_global