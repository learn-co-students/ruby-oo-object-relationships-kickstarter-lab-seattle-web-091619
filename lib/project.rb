require_relative '../lib/project_backer.rb'
require_relative'../lib/backer.rb'

class Project


   # attr_accessor
    attr_reader :title

    def initialize(title)
        @title = title
    end
    def backers
        k = ProjectBacker.all  
        z = []
        k.each do |object| 
              if   object.project.title == self.title
                  z << object.backer
              end
        end
        z
        end


    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end


end
