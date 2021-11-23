# 種類の選択
puts "分類を選択して下さい"
puts "1: リーディングリストのブックマーク処理"
puts "2: プログラミング学習"
puts "3: 仕事"
number = gets

# 内容の入力
puts "内容を入力して下さい"
comment = gets

kinds=
case number.to_i
when 1
  "リーディングリストのブックマーク処理"  
when 2
  "プログラミング学習"
when 3
  "仕事"
end

puts "------------------------------------"
puts "#{kinds}"
puts "#{comment}"