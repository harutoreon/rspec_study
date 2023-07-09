require './lib/effects'

RSpec.describe 'effects spec' do
  example 'reverse method' do
    effect = Effects.reverse
    expect(effect.call('Ruby is fun!')).to eq 'ybuR si !nuf'
  end

  example 'echo method' do
    effect = Effects.echo(2)
    expect(effect.call('Ruby is fun!')).to eq 'RRuubbyy iiss ffuunn!!'

    effect = Effects.echo(3)
    expect(effect.call('Ruby is fun!')).to eq 'RRRuuubbbyyy iiisss fffuuunnn!!!'
  end

  example 'loud method' do
    effect = Effects.loud(2)
    expect(effect.call('Ruby is fun!')).to eq 'RUBY!! IS!! FUN!!!'

    effect = Effects.loud(3)
    expect(effect.call('Ruby is fun!')).to eq 'RUBY!!! IS!!! FUN!!!!'
  end
end