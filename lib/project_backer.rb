
require_relative '../lib/project.rb'
require_relative'../lib/backer.rb'

class ProjectBacker
@@all = []

attr_accessor :project, :backer

    def initialize(project, backer)
       
        @project = project
        @backer  = backer

        @@all << self
    end

    def self.all
        #self.
       @@all 
       return @@all
    end




end

  ##k =  ProjectBacker.new(Project.new("Cool Game"), Backer.new("dummy"))

  ##puts k
  ##puts k.all
  ##puts k.to_s
  ##puts k.project
  ##puts k.backer
  ##puts k.project.title
  ##puts k.backer.name
  ##puts k.project.to_s
 ## puts k.backer.to_s
