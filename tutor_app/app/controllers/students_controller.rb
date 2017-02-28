class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
    @instructor_instructor = Instructor.all.map{|instructor| instructor.name}
  end

  def edit
    @student = Student.find(params[:id])
  end

  def create
    @student = Student.new(student_params)
    @student.instructor = Instructor.find_by(name: params[:student][:instructor])
    @student.save
    redirect_to student_path(@student)
  end

  def update
   @student = Student.find(params[:id])
   @student.update(student_params)
   redirect_to student_path(@student)
 end

 def destroy
   @student = Student.find(params[:id])
   @student.destroy
   redirect_to students_path
 end

  private

  def student_params
    params.require(:student).permit(:name, :img_url)
  end
end
