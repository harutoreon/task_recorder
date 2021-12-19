require './lib/task_recorder'

RSpec.describe Recorder do
  it 'Recorderクラスのインスタンスが生成できるか' do
    Recorder.new
  end
end

RSpec.describe Recorder do
  describe '#start_time' do
    it '@start_time を参照できるか' do
      record = Recorder.new
      expect(record.start_time).to eq '' 
    end
  end
  describe '#start_time=' do
    it '@start_time を変更できるか' do
      record = Recorder.new
      expect(record.start_time = nil).to eq nil
    end
  end
  describe '#end_time' do
    it '@end_time を参照できるか' do
      record = Recorder.new
      expect(record.end_time).to eq ''
    end
  end
  describe '#end_time=' do
    it '@end_time を変更できるか' do
      record = Recorder.new
      expect(record.end_time = nil).to eq nil
    end
  end
end

# @date(必要?)
# @number
# @comment
# @kinds
# result_time(必要?)