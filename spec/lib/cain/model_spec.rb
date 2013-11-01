require 'spec_helper'
require 'cain/model'

module Cain
  class TestModel < Model
  end

  describe Model do
    subject { TestModel.new }
    context '#epoch_to_date' do
      it 'converts timestamp to sane ruby object' do
        subject.last_updated = 1365373956

        date = subject.last_updated
        date.year.should eq 2013
        date.month.should eq 4
        date.day.should eq 7
        date.hour.should eq 22
        date.minute.should eq 32
        date.second.should eq 36
      end
    end
  end
end