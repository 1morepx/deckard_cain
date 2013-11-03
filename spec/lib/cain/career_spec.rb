require 'spec_helper'
require 'cain/career'

module Cain
  describe Career do
    let(:battle_tag){ "Daegren-1581" }
    subject { described_class.new battle_tag }

    it 'generates the right resource path on battle.net' do
      subject.path.should eq "http://us.battle.net/api/d3/profile/Daegren-1581/"
    end

    it 'has heroes in an array' do
      subject.heroes.should be_instance_of Array
    end
  end
end