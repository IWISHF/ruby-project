require 'mysql2'

client1 = Mysql2::Client.new(
	:host     => '127.0.0.1', # 主机
	:username => 'root',      # 用户名
	:password => 'abc123_',    # 密码
	:encoding => 'utf8'       # 编码
	)
defer1 = client1.query "SELECT VERSION()"
defer1.each do |result|
	puts "Result: #{result}"
end