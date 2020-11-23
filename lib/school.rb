# code here!
class School

    attr_accessor :name, :roster, :student_name

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name, grade)
        @grade = grade
        @student_name = student_name
        if @roster[@grade] == nil
            @roster[@grade] = []
        end
        @roster[@grade] << "#{@student_name}"
    end

    def grade(num)
        @roster[num]
    end

    def sort 
        @roster.each do |grade, names|
            names.sort!
        end
    end

end