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
    random = rand(3)
    if random == 0
      outrun_zombie?
    elsif random == 1
      survive_attack?
    else
      puts "You have caught the plague and turned into a zombie!"
      zombie = Zombie.new(rand(@@max_speed), rand(@@max_strength))
      @@horde << zombie
    end
  end

  def outrun_zombie?
    spd = rand(@@max_speed)
    if spd >= @speed
       puts "You got away!"
     else
       "You did not get away..."
     end
  end

  def survive_attack?
    str = rand(@@max_strength)
    if str >= @strength
       puts "You survived the attack!"
     else
       puts "You did not survive the attack"
     end
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
    die_num = rand(11)
      @@horde.pop(die_num)
      @@horde

  end

  def self.spawn
    num = rand(@@plague_level)
    num.times do
      zombie = Zombie.new(rand(@@max_speed), rand(@@max_strength))
      @@horde << zombie
    end
    @@horde
  end

  def self.increase_plague_level
    plague_num = rand(3)
    @@plague_level += plague_num
    @@plague_level
  end
end

Zombie.spawn

zombie1 = Zombie.spawn
puts Zombie.all
zombie1[0].encounter
puts Zombie.all
zombie1[0].encounter
puts Zombie.all
