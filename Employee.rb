class Employee
    def initialize
        @name = name
        @title = title
        @salary = salary
        @boss = boss
    end

    def bonus(multiplier)
        bonus = salary * multiplier
    end



    private
    attr_accessor :salary
end


