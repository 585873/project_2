class StudentsController < ApplicationController
  #index page
  def index
    @students = Student.all
  end
 #show page
  def show
    @student = Student.find(params[:id])
  end
 #new
  def new
    @student = Student.new
    @instructor_instructor = Instructor.all.map{|instructor| instructor.name}
  end
 #edit
  def edit
    @student = Student.find(params[:id])
    if @student.instructor == current_user
      @student.destroy
    else
      flash[:alert] = "Only the original author can delete"
    end
    redirect_to students_path
  end
 #create
  def create
    @student = Student.new(student_params)
    @student= current_user.students.create!(student_params)
    @student.instructor = Instructor.find_by(name: params[:student][:instructor])
    @student.save
    redirect_to student_path(@student)
  end
#update
  def update
   @student = Student.find(params[:id])
   @student.update(student_params)
   redirect_to student_path(@student)
 end
 #delete
 def destroy
   @student = Student.find(params[:id])
  if @student.instructor == current_user
    @student.destroy
  else
    flash[:alert] = "Only the original author can delete"
  end
  redirect_to students_path
end

  private

  def student_params
    params.require(:student).permit(:name, :email_id)
  end
end
