require 'spec_helper'

describe DeckardCain, :vcr do
  it 'returns the correct version string' do
    DeckardCain.version_string.should == "Deckard Cain version #{Cain::VERSION}"
  end

  context "career" do
    let(:battle_tag) { "Daegren-1581" }
    let(:career) { DeckardCain.fetch_career battle_tag }

    it 'creates a career object with the proper battle tag' do
      career.battle_tag.should eq battle_tag
      career.should be_instance_of Cain::Career
    end
  end
end