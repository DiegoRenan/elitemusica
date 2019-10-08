class PublicsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_public, only: [:show, :edit, :update, :destroy]
  
  layout "painel"

  def index
    @publics = Public.all
  end

  def new
    @public = Public.new
  end

  def show
  end

  def create
    @public = Public.new(public_params)

    if @public.save
      redirect_to @public
    else
      render 'new'
    end

  end

  
  def edit
  end

  def update
    if @public.update(public_params)
      redirect_to @public
    else 
      render 'edit'
    end
  end

  def destroy
    @public.destroy
    redirect_to publics_path
  end

  private
    
    def set_public
      @public = Public.find(params[:id])
    end

    def public_params
      params.require(:public).permit(:resume, :title, :image)
    end
end
