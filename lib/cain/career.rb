require 'cain/model'

module Cain
  class Career < Model

    attr_writer :heroes

    def heroes
      @heroes ||= []
    end

  protected
    def resource_path
      "profile/#{battle_tag}/"
    end
  end
end