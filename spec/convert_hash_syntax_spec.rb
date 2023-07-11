require './spec/spec_helper'
require './lib/convert_hash_syntax'

RSpec.describe 'convert hash syntax spec' do
  let(:old_syntax) {
    text = <<~TEXT
    {
      :name => 'Alice',
      :age => 20,
      :gender => :female
    }
    TEXT
  }
  let(:new_syntax) {
    text = <<~TEXT
      {
        name: 'Alice',
        age: 20,
        gender: :female
      }
    TEXT
  }

  it 'returns new hash syntax' do
    expect(convert_hash_syntax(old_syntax)).to eq new_syntax
  end
end