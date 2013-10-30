require 'spec_helper'

describe DeckardCain do
  it 'returns the correct version string' do
    DeckardCain.version_string.should == "Deckard Cain version #{Cain::VERSION}"
  end
end