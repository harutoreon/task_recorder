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
    @start_time = time_count
  end
  
  def date_count
    @date = time_count.strftime("%Y/%m/%d")
  end

  def end_time_count
    @end_time = time_count
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
  
  private

  def time_count
    Time.new
  end
end

logger = Logger.new('./log/logfile.log')
logger.datetime_format = ''

record = Recorder.new
record.start_time_count
record.date_count

puts msg1 = <<TEXT
種類を選択して下さい
1: リーディングリストのブックマーク処理
2: プログラミング学習
3: 仕事
TEXT

record.number = gets

puts '内容を入力して下さい' 

record.comment = gets

record.end_time_count
record.kinds_case

puts msg3 = <<TEXT
------------------------------------
日付: #{record.date}
種類: #{record.kinds}
内容: #{record.comment.chomp}
時間: #{record.result_time}
TEXT

logger.info("#{record.date}, #{record.kinds}, #{record.comment.chomp}, #{record.result_time}")