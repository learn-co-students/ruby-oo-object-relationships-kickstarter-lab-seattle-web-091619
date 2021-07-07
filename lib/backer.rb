class Backer
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
    end

    def back_project(project)
        @project = ProjectBacker.new(project, self)
    end
    
    def backed_projects
        @backer = ProjectBacker.all.select { |item| item.backer == self}
        @backer.map {|element| element.project}
    end
end