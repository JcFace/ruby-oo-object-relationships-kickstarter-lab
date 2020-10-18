class Backer

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
       backers = ProjectBacker.all.select do |pr|
            pr.backer == self
        end
        backers.map do |b|
            b.project
        end
    end

    

end