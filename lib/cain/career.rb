require 'cain/model'
require 'cain/hero'

module Cain
  class Career < Model

    def initialize battle_tag=nil
      super battle_tag

      uri = URI(path)
      data = JSON.parse(Net::HTTP.get(uri))
      data["heroes"].each { |hero| heroes << Hero.build_from_json(hero) }
    end

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