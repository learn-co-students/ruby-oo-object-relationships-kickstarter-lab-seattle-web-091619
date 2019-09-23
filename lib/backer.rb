class Backer
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def back_project(project)
    ProjectBacker.new(project, self)
  end

  def backed_projects
    projects = ProjectBacker.all.select do |projectbacker| 
      projectbacker.backer == self
    end
    projects.map { |project| project.project }
  end
end