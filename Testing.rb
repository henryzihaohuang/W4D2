require_relative "./Employee.rb"
require_relative "./Manager.rb"



ned = Manager.new("Ned", "Founder", 1000000)
darren = Manager.new("Darren", "TA Manager", 78000)
shawna = Employee.new("Shawna", "TA ", 12000)
david = Employee.new("David", "TA ", 10000)

darren.boss = ned
shawna.boss = darren
david.boss = darren
p ned.bonus(5) # => 500_000
p darren.bonus(4) # => 88_000
p david.bonus(3) # => 30_000