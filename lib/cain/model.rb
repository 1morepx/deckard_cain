module Cain
  class Model

    attr_accessor :last_updated, :battle_tag
    def initialize battle_tag=nil
      @battle_tag = battle_tag
    end

    def last_updated= timestamp
      @last_updated = epoch_to_date timestamp
    end

    def path
      "http://#{host}/#{api_path}/#{resource_path}"
    end

  protected

    def epoch_to_date timestamp
      DateTime.strptime("#{timestamp}", '%s')
    end

    def resource_path; end

  private

    def host
      "us.battle.net"
    end

    def api_path
      "api/d3"
    end
  end
end