require "http/server"  # requireで他のファイルで定義されたコードを読み込むことができます

server = HTTP::Server.new do |context|   # 型の指定なしでローカル変数を定義できる
    context.response.content_type = "text/plain"
    context.response.print "Hello world!The time is #{Time.local}"
end

address = server.bind_tcp 8080  # インスタンス生成からbind_tcpメソッドによりポート番号がセットされる
puts "Listening on http://#{address}"   # 表示
server.listen