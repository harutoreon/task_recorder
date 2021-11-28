# 開始時間の取得
start_time = Time.new

# 種類の選択
puts "分類を選択して下さい"
puts "1: リーディングリストのブックマーク処理"
puts "2: プログラミング学習"
puts "3: 仕事"
number = gets

# 内容の入力
puts "内容を入力して下さい"
comment = gets

# 終了時間の取得
end_time = Time.new

# 日付の取得
date = start_time.strftime("%Y/%m/%d")

# 分類の取得
kinds=
case number.to_i
when 1
  "リーディングリストのブックマーク処理"  
when 2
  "プログラミング学習"
when 3
  "仕事"
end

# 時間の取得
time = ((end_time - start_time)/60).round

# 結果の出力
puts "------------------------------------"
puts "日付: #{date}"
puts "分類: #{kinds}"
puts "内容: #{comment}"
puts "時間: #{time}"