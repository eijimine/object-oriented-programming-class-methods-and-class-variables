class BankAccount

  @@interest_rate = []
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

    def withdraw(amt)
      @balance -= amt
    end

    def self.create
      new_account = BankAccount.new
      @@accounts << new_account
      return new_account
    end

    def self.total_funds
      sum = 0
      @@accounts.each do |account|
        sum = sum + account.balance
      end
        puts "The sum of all accounts is $#{sum}."
    end

    def self.interest_time
      @@accounts.each do |num|
        num * @@interest_rate
      end
    end
  end

my_account = BankAccount.create
your_account = BankAccount.create
my_account.deposit(200)
your_account.deposit(1000)
# puts my_account.balance
# puts BankAccount.total_funds
