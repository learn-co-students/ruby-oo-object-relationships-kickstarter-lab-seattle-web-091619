require_relative '../lib/project.rb'
require_relative'../lib/project_backer.rb'
class Backer

attr_reader :name


    def initialize(name)
        @name = name
    end


      def backed_projects
        k = ProjectBacker.all  
        z = []

        k.each do |object| 
              if   object.backer.name == self.name
                  z << object.project
              end
        end
        z
        end

      
    def back_project(project)
        @project = ProjectBacker.new(project, self)
    end

    



end