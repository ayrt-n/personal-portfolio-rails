class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request

    if @contact.deliver
      flash.new[:success] = 'Message sent!'
    else
      flash.new[:error] = 'Could not send message'
      render :new
    end
  end
end
