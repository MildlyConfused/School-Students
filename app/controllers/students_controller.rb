class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new()
    @schools = School.all
  end

  def create
    Student.create(student_params)
    redirect_to students_path
  end

  def edit
    @student = Student.find(params[:id])
    @schools = School.all
  end

  def update
    student = Student.find(params[:id])
    student.update(student_params)
    redirect_to student_path(student.id)
  end

  def delete
    student = Student.find(params[:id])
    school_redirect = student.school.id
    student.delete
    redirect_to school_path(school_redirect)
  end

  private

  def student_params
    params.require(:student).permit(:name, :age, :school_id)
  end
end
