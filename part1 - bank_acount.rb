class BankAccount

attr_accessor :balance

  @@interest_rate = 1.01
  @@accounts = []

    def initialize
      @balance = 0
    end

    def balance
      return @balance
    end

    def deposit(amt)
      @balance += amt
    end

    def self.show
        @@accounts.each do |account|
          puts account.balance
        end
      end

    def withdraw(amt)
      @balance -= amt
    end

    def self.create
      new_account = BankAccount.new
      @@accounts << new_account
      return new_account
    end

    # Writer
    # def bal_new(amt)
    #   @balance = amt
    # end

    def self.total_funds
      sum = 0
      @@accounts.each do |account|
        sum = sum + account.balance
      end
        puts "The sum of all accounts is $#{sum}."
    end

    def self.interest_time
      interest = 0.0
      @@accounts.each do |account|
      interest = account.balance * @@interest_rate
        puts "#{interest}"
        account.balance = interest
      end
    end
end


my_account = BankAccount.create
your_account = BankAccount.create
puts my_account.balance # 0
puts BankAccount.total_funds # 0
my_account.deposit(200)
your_account.deposit(1000)
puts my_account.balance # 200
puts your_account.balance # 1000
puts BankAccount.total_funds # 1200
BankAccount.interest_time
puts my_account.balance # 202.0
puts your_account.balance # 1010.0
puts BankAccount.total_funds # 1212.0
my_account.withdraw(50)
puts my_account.balance # 152.0
puts BankAccount.total_funds # 1162.0
