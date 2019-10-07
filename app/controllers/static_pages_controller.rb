class StaticPagesController < ApplicationController
  before_action :authenticate_user!, only: [:painel]
  
  layout "painel", only: [:painel]
  
  def home
  end

  def painel
  end
end
