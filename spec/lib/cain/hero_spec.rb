require 'spec_helper'
require 'cain/hero'

module Cain
  describe Hero do
    context 'gender' do
      it 'is male' do
        subject.gender = 0

        subject.gender.should eq :male
      end

      it 'is female' do
        subject.gender = 1

        subject.gender.should eq :female
      end
    end

    context '#last_updated' do
      it 'converts timestamp to sane ruby object' do
        subject.last_updated = 1365373956

        subject.last_updated.year.should eq 2013

        # assert_equal hero.last_updated.year   , 2013
        # assert_equal hero.last_updated.month  , 4
        # assert_equal hero.last_updated.day    , 7
        # assert_equal hero.last_updated.hour   , 22
        # assert_equal hero.last_updated.minute , 32
        # assert_equal hero.last_updated.second , 36
      end
    end


    # def test_class_converts_to_symbol
    #   hero = DeckardCain::Hero.new
    #   hero.class = "demon-hunter"

    #   assert_equal hero.class , :demon_hunter
    # end
  end
end