class BankAccount
    def initialize
        @balance=0
        @interest_rate=0.06
    end
    def deposit(amount)
        @balance+=amount
    end
    def withdraw(amount)
        @balance-=amount
    end
    def gain_interest
        @balance+=@balance/100*@interest_rate
    end
end
