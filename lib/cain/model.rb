module Cain
  class Model

    attr_accessor :last_updated

    def last_updated= timestamp
      @last_updated = epoch_to_date timestamp
    end

  protected

    def epoch_to_date timestamp
      DateTime.strptime("#{timestamp}", '%s')
    end
  end
end