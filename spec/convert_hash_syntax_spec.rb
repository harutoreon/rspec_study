# require 'minitest/autorun'
require './lib/convert_hash_syntax'

RSpec.xdescribe 'convert hash syntax spec' do
  it 'does something' do
    
  end
end

# class ConvertHashSyntaxTest < Minitest::Test
#   def test_convert_hash_syntax
#     old_syntax = <<~TEXT
#       {
#         :name => 'Alice',
#         :age => 20,
#         :gender => :female
#       }
#     TEXT
#     expected = <<~TEXT
#       {
#         name: 'Alice',
#         age: 20,
#         gender: :female
#       }
#     TEXT

#     assert_equal expected, convert_hash_syntax(old_syntax)
#   end
# end