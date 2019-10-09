class BiosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_bio
  
  layout "painel"

  def show
  end
  
  def edit
  end

  def update
    if @bio.update(bio_params)
      redirect_to @bio
    else 
      render 'edit'
    end
  end

  private
    
    def set_bio
      @bio = Bio.find(params[:id])
    end

    def bio_params
      params.require(:bio).permit(:resume, :bio, :image)
    end

end
