class Project
        
    attr_accessor :title
    
    def initialize(title)
        @title = title
    end

    def backers
        bprojects = ProjectBacker.all.select {|pbacker| pbacker.project == self}
        bprojects.map {|pbacker| pbacker.backer}
      end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

   
end