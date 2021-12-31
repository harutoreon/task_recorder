require './lib/task_recorder'

RSpec.describe Recorder do
  before do
    @record = Recorder.new
  end

  describe '#start_time' do
    it '@start_time を参照できるか' do
      expect(@record.start_time).to eq nil
    end
  end

  describe '#end_time' do
    it '@end_time を参照できるか' do
      expect(@record.end_time).to eq nil
    end
  end

  describe '#start_time_count' do
    it '開始時間のカウントができるか' do
      expect(@record.start_time_count).to eq @record.start_time
    end
  end

  describe '#end_time_count' do
    it '終了時間のカウントができるか' do
      expect(@record.end_time_count).to eq @record.end_time
    end
  end

  describe '#date_count' do
    it '実施日のカウントができるか' do
      expect(@record.date_count).to eq @record.date
    end
  end

  describe '#number' do
    it '種類の番号を参照できるか' do
      expect(@record.number).to eq nil
    end
  end

  describe '#number=' do
    context '種類の番号が１の場合' do
      it '１に変更できるか' do
        expect(@record.number = 1).to eq 1
      end      
    end
    context '種類の番号が２の場合' do
      it '２に変更できるか' do
        expect(@record.number = 2).to eq 2
      end      
    end
    context '種類の番号が３の場合' do
      it '３に変更できるか' do
        expect(@record.number = 3).to eq 3
      end      
    end
  end

  describe '#comment' do
    it '内容を参照できるか' do
      expect(@record.comment).to eq nil
    end
  end

  describe '#comment=' do
    it '内容を変更できるか' do
      expect(@record.comment = 'Dockerの学習').to eq 'Dockerの学習'
    end
  end

  describe '#kinds' do
    it '種類を参照できるか' do
      expect(@record.kinds).to eq nil
    end
  end

  describe '#kinds_case' do
    context '種類の番号が１の場合' do
      it 'リーディングリストのブックマーク処理となるか' do
        @record.number = 1
        expect(@record.kinds_case).to eq 'リーディングリストのブックマーク処理'
      end      
    end
    context '種類の番号が２の場合' do
      it 'プログラミング学習となるか' do
        @record.number = 2
        expect(@record.kinds_case).to eq 'プログラミング学習'
      end      
    end
    context '種類の番号が３の場合' do
      it '仕事となるか' do
        @record.number = 3
        expect(@record.kinds_case).to eq '仕事'
      end          
    end
  end

  describe '#result_time' do
    it '時間は30であるか' do
      @record.start_time_count
      @record.end_time_count
      expect(@record.result_time).to eq ((@record.end_time - @record.start_time)/60).round
    end
  end
end

