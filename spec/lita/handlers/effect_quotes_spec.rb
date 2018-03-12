require 'spec_helper'

describe Lita::Handlers::RandomEffects, lita_handler: true do
  it { is_expected.to route('!daily effect') }
  it { is_expected.to route('!daily effect') }
  it { is_expected.to route('!daily effect') }
  it { is_expected.to route('!daily effect') }

  it '!daily effect' do
    send_message('!daily effect')
    expect(replies.last).to be_a(String)
  end
end
