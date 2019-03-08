class ContactsController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:new, :create]

  def new
    # skip_authorization
    @contact = Contact.new
  end

  def create
    # skip_authorization
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash[:notice] = "Merci pour votre message. Nous vous recontacterons très prochainement."
      redirect_to root_path
    else
      flash[:alert] = "Un problème est survenu. Votre message n'est pas parti."
      render :new
    end
  end
end
