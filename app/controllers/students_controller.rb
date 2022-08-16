class StudentsController < ApplicationController
    def index
        # byebug
        students = Student.all
        render json: students
    end
    def grades
        # byebug
        students = Student.order(grade: :desc)
        render json:students
    end
    def highest_grade
        # byebug
        student = Student.order(grade: :desc).first
        render json: student
    end
end
