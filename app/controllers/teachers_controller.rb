class TeachersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_teacher, only: [:show, :edit, :update, :destroy]
  
  layout "painel"

  def index
    @teachers = Teacher.all
  end

  def new
    @teacher = Teacher.new
  end

  def show
  end

  def create
    @teacher = Teacher.new(teacher_params)

    if @teacher.save
      redirect_to @teacher
    else
      render 'new'
    end

  end

  
  def edit
  end

  def update
    if @teacher.update(teacher_params)
      redirect_to @teacher
    else 
      render 'edit'
    end
  end

  def destroy
    @teacher.destroy
    redirect_to teachers_path
  end

  private
    
    def set_teacher
      @teacher = Teacher.find(params[:id])
    end

    def teacher_params
      params.require(:teacher).permit(:name, :job, :facebook, :instagram, :image)
    end
end
