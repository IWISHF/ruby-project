# 打开和关闭文件
=begin
打开文件有几种不同的模式，对应不同的权限：
r 只读模式。文件指针被放置在文件的开头。默认的模式。
r+ 读写模式。文件指针被放置在文件的开头。
w 只写模式。如果文件存在，则重写文件。如果文件不存在，则创建一个新文件用于写入。
w+ 读写模式。如果文件存在，则重写已存在的文件。如果文件不存在，则创建一个新文件用于读写。
a 只写模式。如果文件存在，则文件指针被放置在文件的末尾。也就是说，文件是追加模式。如果文件不存在，则创建一个新文件用于写入。
a+ 读写模式。如果文件存在，则文件指针被放置在文件的末尾。也就是说，文件是追加模式。如果文件不存在，则创建一个新文件用于读写。


http://ruby-doc.com/docs/ProgrammingRuby/html/ref_c_file.html
http://ruby-doc.com/docs/ProgrammingRuby/html/ref_c_io.html
=end
file_1 = File.new('test_file.text', 'a+')
file_1.syswrite('I am danny.')
file_1.close

file_2 = File.open('test_file.text', 'r')
words = file_2.sysread(5)
puts words
file_2.close