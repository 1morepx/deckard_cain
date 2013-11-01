require 'cain/model'

module Cain
  class Career < Model
    attr_accessor :battle_tag

    def initialize battle_tag
      @battle_tag = battle_tag
    end
  end
end