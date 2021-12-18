require 'logger'


logger = Logger.new('./log/logfile.log')
logger.datetime_format = ''

start_time = Time.new
date = start_time.strftime("%Y/%m/%d")

text = <<TEXT
種類を選択して下さい
1: リーディングリストのブックマーク処理
2: プログラミング学習
3: 仕事
TEXT

puts text
number = gets

puts "内容を入力して下さい"
comment = gets

end_time = Time.new

kinds=
case number.to_i
when 1
  "リーディングリストのブックマーク処理"  
when 2
  "プログラミング学習"
when 3
  "仕事"
end

result_time = ((end_time - start_time)/60).round

result_text = <<TEXT
------------------------------------
日付: #{date}
種類: #{kinds}
内容: #{comment.chomp}
時間: #{result_time}
TEXT

puts result_text

logger.info("#{date}, #{kinds}, #{comment.chomp}, #{result_time}")