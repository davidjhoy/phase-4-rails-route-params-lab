class StudentsController < ApplicationController

  def index
    # if 
    if params.key?("name") == true
      
       
      render json: Student.where(first_name: params[:name].capitalize).or(Student.where(last_name: params[:name].capitalize))
    
    else
      students = Student.all
      render json: students
  #
    end
 
  end

  def ids 
    student = Student.find(params[:id])
    render json: student
  end

  

end
