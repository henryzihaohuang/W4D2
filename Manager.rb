# require_relative "./Employee.rb"

class Manager < Employee

    attr_reader :name, :title, :salary, :employees
    
    def initialize(name, title, salary)
        super
        @name = name
        @title = title
        @employees = []
        @salary = salary
 
        

    end

    def subsalary
        subsalary = 0
        @employees.each do |employee|
            if employee.is_a?(Manager)
                subsalary += employee.salary + employee.subsalary
            else
                subsalary += employee.salary
            end
        end
        subsalary
    end

    def bonus(multiplier)
        self.subsalary * multiplier
    end
    
end


# ned = Manager.new("Ned", "Founder", 1000000)
# darren = Manager.new("Darren", "TA Manager", 78000)
# shawna = Employee.new("Shawna", "TA ", 12000)
# david = Employee.new("David", "TA ", 10000)

# darren.boss = ned
# shawna.boss = darren
# david.boss = darren
# p ned.bonus(5) # => 500_000
# p darren.bonus(4) # => 88_000
# p david.bonus(3) # => 30_000