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

class Player
    def initialize
        @gold_coins=0
        @health_points=10
        @lives=5
    end
    def level_up
        @lives+=1
    end
    def collect_treasure
        @gold_coins+=1
        if @gold_coins%10==0
            level_up
        end
    end
    def do_battle(dmg)
        @health_points-=dmg
        if @health_points<1
            @lives-=1
            @health_points=10
        end
        if @lives<1
            restart
        end
    end
    def restart
        @lives=5
        @health_points=10
        @gold_coins=0
    end
end
