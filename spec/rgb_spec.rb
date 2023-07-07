require './lib/rgb'

RSpec.describe 'RGB変換プログラム' do
  describe '10進数を16進数に変換' do
    it '#000000は(0, 0, 0)に変換されること' do
      expect('#000000').to eq to_hex(0, 0, 0) 
    end
    it '#ffffffは(255, 255, 255)に変換されること' do
      expect('#ffffff').to eq to_hex(255, 255, 255)
    end
    it '043c78は(4, 60, 120)に変換されること' do
      expect('#043c78').to eq to_hex(4, 60, 120)
    end
  end
  describe '16進数を10進数に変換' do
    it '[0, 0, 0]は#000000に変換されること' do
      expect([0, 0, 0]).to eq to_ints('#000000')
    end
    it '[255, 255, 255]は#ffffffに変換されること' do
      expect([255, 255, 255]).to eq to_ints('#ffffff')
    end
    it '[4, 60, 120]は#043c78に変換されること' do
      expect([4, 60, 120]).to eq to_ints('#043c78')
    end
  end
end