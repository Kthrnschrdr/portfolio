class ContactsController < ApplicationController
  skip_before_filter :authorize, :only => [:new, :create]
  
  def index
      @contacts = Contact.all
  end
  
  def new
     @contact = Contact.new
  end
  
  def create
     @contact = Contact.new(params[:contact])
     if @contact.save
       redirect_to root_path
     else
       render "new"
     end
  end
  
  def show
     @contact = Contact.find(params[:id])
  end
  
  def edit
     @contact = Contact.find(params[:id])
  end
  
  def update
     @contact = Contact.find(params[:id])
     if @contact.update_attributes(params[:contact])
       redirect_to contact_path(@contact.id)
     else
       render "edit"
     end
  end
  
  def destroy
    @contact - Contact.find(params[:id])
    if contact.delete
      redirect_to contacts_path
    else
      render 'edit'
    end
  end
end
