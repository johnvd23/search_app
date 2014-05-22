class ContactsController < ApplicationController
  before_action :signed_in_user, only: [:create, :destroy]
  before_action :correct_user,   only: :destroy

  def new
    @contact = Contact.new
  end
  def create
    @contact = current_user.contacts.build(contact_params)
    if @contact.save
      flash[:success] = "Contact created!"
      redirect_to contacts_url
    else
      render 'static_pages/home'
    end
  end
  def index
    @contacts = Contact.search params[:search]
  end
  def search
    @contacts = Contact.search params[:search]
  end  
  def show
    @contacts = Contact.first
  end  
  def destroy
    @contact.destroy
    redirect_to root_url
  end

  private

    def contact_params
      params.require(:contact).permit(:first_name, :last_name)
    end
    def correct_user
      @contact = current_user.contacts.find_by(id: params[:id])
      redirect_to root_url if @contact.nil?
    end
end