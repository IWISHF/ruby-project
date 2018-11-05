# include
$LOAD_PATH << `.`       # 在当前目录搜索被引用文件
require 'module'
class Test
include Hello
Hello.hello_ruby
end