require 'date'
require 'cain/model'

module Cain
  class Hero < Model

    attr_accessor :name, :id, :level, :gender, :hardcore, :last_updated, :dead, :paragon_level, :character_class

    def gender= value
      @gender = value.zero? ? :male : :female
    end

    def last_updated= value
      @last_updated = epoch_to_date value
    end

    def character_class= value
      value = value.gsub(/-/, '_')
      @character_class = value.to_sym
    end
  end
end