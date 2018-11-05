# Hash 与 数组 十分相似，不过 Hash 保存的是 键值对 （key-value）的组合，键和值可以是 String, Integer, Float, Array, Hash 各种类型
# http://ruby-doc.com/docs/ProgrammingRuby/html/ref_c_hash.html

hs = Hash.new     # 创建一个 Hash
hs_2 = Hash.new("month") # 创建一个默认值是 "month" 的 Hash
hs_3 = Hash["ja"=>"January", "fe"=>"February"] # 第1对：key=ja, value=January；第2对：key=fe, value=February


hs = Hash["t"=>"Tom", "m"=>"Mary", "r"=>"Rose", "k"=>"King"]

hs.["t"]         # 使用键 "t" 从 Hash 引用值
hs.["t"]="Tony"  # 将键 "t" 对应的值改为 "Tony"
hs.delete("m")   # 删除键 "m" 对应的键值对
hs.index("Rose") # 查找值 "Rose" 对应的键