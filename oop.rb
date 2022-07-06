
class Worker


attr_accessor :name


    

    def dept
        return "Data Analytics"
    end

end

new_worker = Worker.new
new_worker.name = "Josie"
worker_name = new_worker.name
puts "#{worker_name} is new here. She works in the #{new_worker.dept} dept."

