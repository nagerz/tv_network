class Show
  attr_reader :name,
              :creator,
              :actors

  def initialize(name, creator, actors)
    @name = name
    @creator = creator
    @actors = actors
  end

  def total_salary
    @actors.inject(0) do |sum, actor|
      sum + actor.salary
    end
  end

end
