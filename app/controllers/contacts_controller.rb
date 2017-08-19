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
    redirect_to "/contacts"
  end

  def destroy
    redirect_to "/contacts"
  end
end
