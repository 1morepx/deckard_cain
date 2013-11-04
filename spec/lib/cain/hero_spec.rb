require 'spec_helper'
require 'cain/hero'

module Cain
  describe Hero, :vcr do
    let(:battle_tag) { "Daegren-1581" }
    subject { described_class.new battle_tag }
    before do
      subject.id = 3691256
    end

    context '#gender' do
      it 'is male' do
        subject.gender = 0

        subject.gender.should eq :male
      end

      it 'is female' do
        subject.gender = 1

        subject.gender.should eq :female
      end
    end

    context '#character_class' do
      it 'represents classes as symbols' do
        subject.character_class = "demon-hunter"

        subject.character_class.should eq :demon_hunter
      end
    end

    context '#path' do
      before do
        subject.id = hero_id
      end
      let(:hero_id) { 5 }

      it 'path is correct for the resource' do
        subject.path.should == "http://us.battle.net/api/d3/profile/#{battle_tag}/hero/#{hero_id}"
      end
    end
  end
end