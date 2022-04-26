# code here!
class School
    def initialize(name)
        @name = name
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(name, grade)
        if @roster[grade]
            students_array = @roster[grade]
        else
            students_array = []
        end    
        students_array.push(name)
        @roster[grade] = students_array
    end

    def grade(grade_num)
        @roster[grade_num]
    end

    def sort
        @roster.each {|key, value| @roster[key] = value.sort}
    end    
end