class Backer 

    attr_reader :name, :projects

    @@all = []

    def initialize(name)
        @name = name
        @projects = []
        @@all << self
    end

    def self.all
        @@all 
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        ProjectBacker.all.each do |projectbacker|
            if projectbacker.backer == self
                @projects << projectbacker.project
            end
        end
        @projects
    end
end