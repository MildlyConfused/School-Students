class TeachersController < ApplicationController
  def index
    @teachers = Teacher.all
  end

  def new
    @teacher = Teacher.new()
    @schools = School.all
  end

  def create
    teacher = Teacher.create(teacher_params)
    redirect_to teacher_path(teacher)
  end

  def edit
    @teacher = Teacher.find(params[:id])
    @schools = School.all
  end

  def update
    teacher = Teacher.find(params[:id])
    teacher.update(teacher_params)
    redirect_to teacher_path(teacher)
  end

  def show
    @teacher = Teacher.find(params[:id])
  end

  def delete
    teacher = Teacher.find(params[:id])
    teacher.delete
    redirect_to school_path(teacher.school.id)
  end
end

private

def teacher_params
  params.require(:teacher).permit(:name, :age, :school_id)
end
