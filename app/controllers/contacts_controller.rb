class ContactsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_contact
  
  layout "painel"

  def show
  end
  
  def edit
  end

  def update
    if @contact.update(contact_params)
      redirect_to @contact
    else 
      render 'edit'
    end
  end

  private
    
    def set_contact
      @contact = Contact.find(params[:id])
    end

    def contact_params
      params.require(:contact).permit(:rua, 
                                      :numero, 
                                      :cep,
                                      :cidade,
                                      :uf,
                                      :phone_cell,
                                      :phone_fixed,
                                      :whatsapp,
                                      :att_week,
                                      :att_weekend,
                                      :email,
                                      :facebook,
                                      :instagram
                                      )
    end
end
