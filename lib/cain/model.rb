module Cain
  class Model

  private

    def epoch_to_date timestamp
      DateTime.strptime("#{timestamp}", '%s')
    end
  end
end