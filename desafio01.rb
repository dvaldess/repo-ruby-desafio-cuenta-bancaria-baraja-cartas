class User
    attr_reader :user_name, :account
    def initialize(user_name, account = [])
        @user_name = user_name
        @account = account
    end
    def total_balance #El each no retorna nada si no guardo el resultado en una variable
        sum_total = 0
        self.account.each do |i|
            sum_total += i.balance
        end
        return sum_total
    end
    # def total_balance
    #     self.account.map {|acc| acc.balance}.sum
    # end
end
class BankAccount
    attr_accessor :bank, :number_account, :balance
    def initialize(bank, number_account, balance = 0)
        @bank = bank
        @number_account = number_account
        @balance = balance
    end
    # def to_transfer(amount, another_account)
    #     self.balance -= amount
    #     another_account.balance += amount
    # end
    def to_transfer(amount, another_account)
        self.balance = self.balance - amount
        another_account.balance = another_account.balance + amount
    end
end

acc_a = BankAccount.new('ElBanco', 7746567, 5000)
acc_b = BankAccount.new('TuBanco', 2299845, 5000)

puts acc_a.bank
puts acc_a.number_account
puts acc_a.balance

acc_a.to_transfer(5000, acc_b)

puts acc_a.balance
puts acc_b.balance

user_account = User.new('Isi', [acc_a, acc_b])

puts user_account
