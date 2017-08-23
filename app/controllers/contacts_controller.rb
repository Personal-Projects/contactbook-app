class ContactsController < ApplicationController
  def index
    if current_user
      @contacts = current_user.contacts
    else
      flash[:warning] = "You are not logged in."
      redirect_to '/login'
    end
  end

  def new
    render "new.html.erb"
  end

  def create
      address = params[:address]
      # coordinates = Geocoder.coordinates(address)
      # input_latitude = coordinates[0]
      # input_longitude = coordinates[1]
    @contact = Contact.create(
      first_name: params[:first_name],
      middle_name: params[:middle_name],
      last_name: params[:last_name],
      number: params[:number],
      bio: params[:bio]
      # latitude: input_latitude,
      # longitude: input_longitude
    )
    flash[:success] = "Student added!"
    redirect_to "/contacts/#{@contact.id}"
  end

  def show
    @contact = Contact.find_by(id: params[:id])
    if current_user && @current_user.id == @contact.user_id
    render "show.html.erb"
    else
      redirect_to '/login'
    end
  end

  def edit
    @contact = Contact.find_by(id: params[:id])
    render "edit.html.erb"
  end

  def update
    @contact = Contact.find_by(id: params[:id])
    @contact.update(
      first_name: params[:first_name],
      middle_name: params[:middle_name],
      last_name: params[:last_name],
      number: params[:number],
      bio: params[:bio]
    )
    flash[:success] = "Student updated!"
    redirect_to "/contacts/#{@contact.id}"
  end

  def destroy
    @contact = Contact.find_by(id: params[:id])
    @contact.destroy
    flash[:success] = "Student deleted."
    redirect_to "/contacts"
  end
end
