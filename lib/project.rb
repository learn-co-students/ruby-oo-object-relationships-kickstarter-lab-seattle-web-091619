class Project
    attr_accessor :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        @abc = ProjectBacker.all.select {|item| item.project == self}
        @abc.map {|element| element.backer}
    end
end