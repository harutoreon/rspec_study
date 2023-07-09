require './lib/bank'
require './lib/team'

RSpec.describe 'deep freezable spec' do
  it 'deep freeze to array' do
    expect(Team::COUNTRIES).to eq ['Japan', 'US', 'India']
    expect(Team::COUNTRIES.frozen?).to eq true
    expect(Team::COUNTRIES.all? { |country| country.frozen? }).to eq true
  end

  it 'deep freeze to hash' do
    expect(Bank::CURRENCIES).to eq ({
      'Japan' => 'yen',
      'US' => 'dollar',
      'India' => 'rupee'
    })
    expect(Bank::CURRENCIES.frozen?).to eq true
    expect(Bank::CURRENCIES.all? { |key, value|
      key.frozen? && value.frozen?
    }).to eq true
  end
end