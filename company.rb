class Company
    def set_name=(name)
        @name = name
    end
    
    def get_name
        return @name
    end
    
    def set_duties=(job_duties)
        @job_duties = job_duties
    end
    
    def get_duties
        return @job_duties
    end
end

class Marketing < Company
    def says
        return "Let's get our ad's out to facebook!"
    end
end

class Sales < Company
    def says
        return "I love getting on the phone and talking to prospects!"
    end
end

class Data < Company
    def says
        return "I love numbers and data and turning them into a story!"
    end
end

class Executive < Company
    def says
        return "Let's make sure we get everything done today!"
    end
end

marketing_person = Marketing.new
marketing_person.set_name = "Steve"
marketing_name = marketing_person.get_name

sales_guy = Sales.new
sales_guy.set_name = "Stan"
sales_name = sales_guy.get_name

data_person = Data.new
data_person.set_name = "Carla"
data_name = data_person.get_name

executive_person = Executive.new
executive_person.set_name = "Julie"
executive_name = executive_person.get_name

puts "#{marketing_name} says #{marketing_person.says}, 
#{sales_name} says #{sales_guy.says}, 
and #{data_name} says #{data_person.says},
and #{executive_name} says #{executive_person.says}."

puts marketing_person.inspect
puts sales_guy.inspect
puts data_person.inspect
puts executive_person.inspect



