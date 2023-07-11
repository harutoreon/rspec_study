require './spec/spec_helper'
require './lib/hello'

RSpec.describe Hello do
  it 'messege return hello' do
    expect(Hello.new.message).to eq 'hello'
  end
end