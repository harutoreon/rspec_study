require './lib/rgb'

RSpec.describe 'RGB convert' do
  describe 'Convert ints to hex' do
    it 'returns (0, 0, 0)' do
      expect('#000000').to eq to_hex(0, 0, 0) 
    end
    it 'returns (255, 255, 255)' do
      expect('#ffffff').to eq to_hex(255, 255, 255)
    end
    it 'returns (4, 60, 120)' do
      expect('#043c78').to eq to_hex(4, 60, 120)
    end
  end
  describe 'Convert hex to ints' do
    it 'returns #000000' do
      expect([0, 0, 0]).to eq to_ints('#000000')
    end
    it 'returns [255, 255, 255]' do
      expect([255, 255, 255]).to eq to_ints('#ffffff')
    end
    it 'returns [4, 60, 120]' do
      expect([4, 60, 120]).to eq to_ints('#043c78')
    end
  end
end