class Network
  attr_reader :name,
              :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def highest_paid_actor
    high_show = @shows.max_by do |show|
      highest_paid_character_by_show(show).salary
    end
    highest_paid_character_by_show(high_show).actor
  end

  def highest_paid_character_by_show(show)
    show.actors.max_by do |actor|
      actor.salary
    end
  end

  def payroll
    payroll = Hash.new
    @shows.each do |show|
      show.actors.each do |actor|
        payroll[actor.actor] = actor.salary
      end
    end
    return payroll
  end

end
