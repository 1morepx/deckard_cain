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

    context '#character_class' do
      it 'represents classes as symbols' do
        subject.character_class = "demon-hunter"

        subject.character_class.should eq :demon_hunter
      end
    end
  end
end