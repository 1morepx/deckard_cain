require 'date'
require 'cain/model'

module Cain
  class Hero < Model

    attr_accessor :name, :id, :level, :gender, :hardcore, :dead, :paragon_level, :character_class

    def gender= value
      @gender = value.zero? ? :male : :female
    end

    def character_class= value
      value = value.gsub(/-/, '_')
      @character_class = value.to_sym
    end

  protected
    def resource_path
      "profile/#{battle_tag}/hero/#{id}"
    end
  end
end