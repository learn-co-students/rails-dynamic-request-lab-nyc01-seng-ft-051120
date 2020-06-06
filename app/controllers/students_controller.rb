class StudentsController < ApplicationController
  def index
    @students = Student.all
    render 'students/index.html.erb'

  end

  def show

    @student = Student.find_by(params[:index])
    render 'students/show.html.erb'
  end
end