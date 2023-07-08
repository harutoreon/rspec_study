require './lib/convert_hash_syntax'

RSpec.describe 'convert hash syntax spec' do
  it 'returns new hash syntax' do
    old_syntax = <<~TEXT
      {
        :name => 'Alice',
        :age => 20,
        :gender => :female
      }
    TEXT
    new_syntax = <<~TEXT
      {
        name: 'Alice',
        age: 20,
        gender: :female
      }
    TEXT

    expect(convert_hash_syntax(old_syntax)).to eq new_syntax
  end
end