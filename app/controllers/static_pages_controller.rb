class StaticPagesController < ApplicationController
  before_action :authenticate_user!, only: [:painel]
  
  layout "painel", only: [:painel]
  
  def home
    @bio = Bio.last
    @publics = Public.all
    @video = HomeVideo.last
    @comments = Comment.all
    @teachers = Teacher.all
    @contact = Contact.last
  end

  def painel
    @bio = Bio.first
    @resume = @bio.resume
    @video = HomeVideo.last
    @contact = Contact.last
  end
end
