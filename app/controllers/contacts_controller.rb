class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    address = params[:address]
    coordinates = Geocoder.coordinates(address)
    input_latitude = coordinates[0]
    input_longitude = coordinates[1]
    contact = Contact.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone: params[:phone],
      latitude: input_latitude,
      longitude: input_longitude
    )
    flash[:success] = "Student added!"
    redirect_to "/contacts"
  end

  def show
    @contact = Contact.find_by(id: params[:id])
    render "show.html.erb"
  end

  def edit
    render "edit.html.erb"
  end

  def update
    @contact = Contact.find_by(id: params[:id])
    @contact.update(
      first_name: params[:first_name],
      middle_name: params[:middle_name],
      last_name: params[:last_name],
      number: params[:number],
      email: params[:email],
      bio: params[:bio]
    )
    redirect_to "/contacts"
  end

  def destroy
    @contact = Contact.find_by(id: params[:id])
    @contact.destroy
    flash[:warning] = "Contact deleted."
    redirect_to "/contacts"
  end
end
