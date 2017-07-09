class Vampire

  attr_accessor :name, :age, :in_coffin, :drank_blood_today

  @@coven = []

  def initialize
    @name = name
    @age = age
    @in_coffin = true
    @drank_blood_today = true
  end

  def self.create(name, age)
    vamp = Vampire.new(name, age)
    @@coven << vamp
  end

  def self.sunrise
    #remove vamps from coven who are out of their coffins and haven't drank blood
    @@coven.each do |cov|
      if cov.in_coffin == false && cov.drank_blood_today == false
        @@coven.delete(cov)
      end
    end
  end

  def self.sunset
    #which sets drank_blood_today and in_coffin to false for the entire coven as they go out in search of blood
    @@coven.each do |cov|
      cov.in_coffin = false
      cov.drank_blood_today = false
    end
  end

  def self.go_home
    #sets vamps in coffins to true
    @@coven.each do |cov|
      cov.in_coffin == true
    end
  end
#----------------------------------- stopped here
  def drink_blood
    @drank_blood_today = true
  end




end
