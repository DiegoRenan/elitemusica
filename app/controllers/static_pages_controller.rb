class StaticPagesController < ApplicationController
  before_action :authenticate_user!, only: [:painel]
  
  layout "painel", only: [:painel]
  
  def home
    @bio = Bio.first
  end

  def painel
    @bio = Bio.first
    @resume = @bio.resume
  end
end
