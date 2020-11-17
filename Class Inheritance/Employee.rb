# require_relative "./Manager.rb"

class Employee

    attr_reader :employee_name, :title, :boss
    attr_accessor :salary

    def initialize(employee_name, title, salary)
        @employee_name = employee_name
        @title = title
        @salary = salary
        # @boss = nil
    end

    def boss=(new_boss)
        @boss = new_boss
        new_boss.employees << self
    end

    def bonus(multiplier)
        bonus = salary * multiplier
    end

    
end