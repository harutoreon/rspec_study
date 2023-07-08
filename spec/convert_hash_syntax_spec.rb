require './lib/convert_hash_syntax'

RSpec.describe 'convert hash syntax spec' do
  before do
    @old_syntax = <<~TEXT
      {
        :name => 'Alice',
        :age => 20,
        :gender => :female
      }
    TEXT
    @new_syntax = <<~TEXT
      {
        name: 'Alice',
        age: 20,
        gender: :female
      }
    TEXT
  end

  it 'returns new hash syntax' do
    expect(convert_hash_syntax(@old_syntax)).to eq @new_syntax
  end
end