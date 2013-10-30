require 'date'
require 'cain/model'

module Cain
  class Hero < Model

    attr_accessor :name, :id, :level, :gender, :hardcore, :last_updated, :dead, :paragon_level, :class

    def gender= value
      @gender = value.zero? ? :male : :female
    end

    def last_updated= value
      @last_updated = epoch_to_date value
    end

    def class= value
      value = value.gsub(/-/, '_')
      @class = value.to_sym
    end
  end
end