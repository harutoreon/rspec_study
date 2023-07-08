require './lib/gate'
require './lib/ticket'

RSpec.describe 'ticket gate spec' do
  before do
    @umeda = Gate.new(:umeda)
    @juso = Gate.new(:juso)
    @mikuni = Gate.new(:mikuni)    
  end

  example 'when get on at Umeda and get off at Juso' do
    ticket = Ticket.new(150)
    @umeda.enter(ticket)

    expect(@juso.exit(ticket)).to eq true
  end

  example 'when get on at Umeda and get off at mikuni' do
    ticket = Ticket.new(190)
    @umeda.enter(ticket)

    expect(@mikuni.exit(ticket)).to eq true
  end

  example 'when get on at Juso and get off at Mikuni' do
    ticket = Ticket.new(150)
    @juso.enter(ticket)

    expect(@mikuni.exit(ticket)).to eq true
  end

  example 'Failure: when get on at Umeda and get off at mikuni' do
    ticket = Ticket.new(150)
    @umeda.enter(ticket)

    expect(@mikuni.exit(ticket)).to eq false
  end
end