require 'cain/model'

module Cain
  class Career < Model

  protected
    def resource_path
      "profile/#{battle_tag}/"
    end
  end
end