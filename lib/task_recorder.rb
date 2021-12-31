require 'logger'

class Recorder
  attr_accessor :number, :comment
  attr_reader :start_time, :end_time, :date, :kinds

  def initialize
    @start_time
    @end_time
    @date
    @number
    @comment
    @kinds
    @result_time
  end
  
  def start_time_count
    @start_time = Time.new
  end
  
  def end_time_count
    @end_time = Time.new
  end
  
  def date_count
    time = Time.new
    @date = time.strftime("%Y/%m/%d")  
  end
  
  def kinds_case
    @kinds =
    case @number.to_i
    when 1
      "リーディングリストのブックマーク処理"  
    when 2
      "プログラミング学習"
    when 3
      "仕事"
    end    
  end
  
  def result_time
    @result_time = ((@end_time - @start_time)/60).round
  end  
end


logger = Logger.new('./log/logfile.log')
logger.datetime_format = ''

record = Recorder.new
record.date_count
record.start_time_count

msg1 = <<TEXT
種類を選択して下さい
1: リーディングリストのブックマーク処理
2: プログラミング学習
3: 仕事
TEXT

puts msg1
record.number = gets

msg2 = '内容を入力して下さい' 
puts msg2

record.comment = gets

record.end_time_count

record.kinds_case

msg3 = <<TEXT
------------------------------------
日付: #{record.date}
種類: #{record.kinds}
内容: #{record.comment.chomp}
時間: #{record.result_time}
TEXT

puts msg3

logger.info("#{record.date}, #{record.kinds}, #{record.comment.chomp}, #{record.result_time}")