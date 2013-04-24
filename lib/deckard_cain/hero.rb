class Hero

  attr_accessor :name, :id, :level, :gender, :hardcore, :last_updated, :dead

  def gender= value
    @gender = value.zero? ? :male : :female
  end

end