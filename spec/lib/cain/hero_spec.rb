require 'spec_helper'
require 'cain/hero'

module Cain
  describe Hero do
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

    context '#last_updated' do
      it 'converts timestamp to sane ruby object' do
        subject.last_updated = 1365373956

        subject.last_updated.year.should eq 2013
        subject.last_updated.month.should eq 4
        subject.last_updated.day.should eq 7
        subject.last_updated.hour.should eq 22
        subject.last_updated.minute.should eq 32
        subject.last_updated.second.should eq 36
      end
    end

    context '#character_class' do
      it 'represents classes as symbols' do
        subject.character_class = "demon-hunter"

        subject.character_class.should eq :demon_hunter
      end
    end
  end
end