class Cat
    def initialize(name,food,time)
        @name=name
        @preferred_food=food
        @meal_time=time
    end
    def eats_at
        if @meal_time<13
            return "#{@meal_time} AM"
        else
            return "#{@meal_time-12} PM"
        end
    end
    def meow
        return "My name is #{@name} and I eat #{@preferred_food} at #{eats_at}"
    end
end

one=Cat.new("Spot","pizza",7)
two=Cat.new("Fido","ice cream",14)
puts one.meow
puts two.meow