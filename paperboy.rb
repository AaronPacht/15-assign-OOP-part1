class Paperboy
    def initialize(name)
        @name=name
        @experience=0
        @earnings=0
    end
    attr_reader:earnings
    def quota
        @experience/2+50
    end
    def deliver(start_address,end_address)
        if start_address<end_address
            n=end_address-start_address+1
        else
            n=start_address-end_address+1
        end
        if n<quota
            @experience+=n
            a=n*0.25-2
            @earnings+=a
            return a
        else
            m=n-quota
            l=quota
            @experience+=n
            @earnings+=l*0.25+m*0.50
        end
    end
    def report
        "I'm #{@name}, I've delivered #{@experience} papers and earned $#{@earnings} so far!"
    end
end

tom=Paperboy.new("Tom")
p tom.quota
p tom.deliver(101,160)
p tom.earnings
p tom.report
p tom.quota
p tom.deliver(75,1)
p tom.earnings
p tom.report
