class Zombie

  @@horde = []
  @@plague_level = 10
  @@max_speed = 5
  @@max_strength = 8
  @@default_speed = 1
  @@default_strength = 3


  ###### Instance Methods

  def initialize(spd, str)
      if spd >= @@max_speed
       @speed = @@default_speed
      else
       @speed = spd
      end

      if str >= @@max_strength
       @strength = @@default_strength
      else
       @strength = str
     end
  end

  def encounter

  end

  def outrun_zombie?

  end

  def survive_attack?

  end

  ###### Class Methods

  def self.all
    @@horde
  end

  def self.new_day
    some_die_off
    spawn
    increase_plague_level

  end

  def self.some_die_off

  end

  def self.spawn
    num = rand(@@plague_level)
    num.times do
      zombie = Zombie.new(rand(@@max_speed), rand(@@max_strength))
      puts zombie
      @@horde << zombie
    end
    @@horde
  end

  def self.increase_plague_level
    plague_num = rand(3)
    @@plague_level += plague_num
  end
end

Zombie.spawn
puts Zombie.all
