require './lib/bank'
require './lib/team'

RSpec.describe 'deep freezable spec' do
  describe 'Team class' do
    specify 'constant is the same as the specified argument' do
      expect(Team::COUNTRIES).to eq ['Japan', 'US', 'India']
    end

    specify 'constants are always frozen' do
      expect(Team::COUNTRIES.frozen?).to eq true
    end
    
    specify 'each element of a constant is always frozen' do
      expect(Team::COUNTRIES.all? { |country| country.frozen? }).to eq true
    end
  end

  describe 'Bank class' do
    specify 'constant is the same as the specified argument' do
      expect(Bank::CURRENCIES).to eq ({
        'Japan' => 'yen',
        'US' => 'dollar',
        'India' => 'rupee'
      })
    end

    specify 'constants are always frozen' do
      expect(Bank::CURRENCIES.frozen?).to eq true
    end

    specify 'each element of a constant is always frozen' do
      expect(Bank::CURRENCIES.all? { |key, value|
        key.frozen? && value.frozen?
      }).to eq true  
    end
  end
end