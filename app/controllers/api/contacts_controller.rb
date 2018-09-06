class Api::ContactsController < ApplicationController
  
  def single_contact_method
    @contact = Contact.first
    render "single_contact.json.jbuilder"
  end

  def index
    @contacts = Contact.all
    render "index.json.jbuilder"
  end

  def show
    @contact = Contact.find(params[:id])
    render "show.json.jbuilder"
  end

  def create
    @contact = Contact.create(
    first_name: params[:first_name],
    middle_name: params[:middle_name],
    last_name: params[:last_name],
    phone: params[:phone],
    email: params[:email],
    image_url: params[:image_url],
    bio: params[:bio]
    )
    render "show.json.jbuilder"
  end

  def update
    @contact = Contact.find(params[:id])
    @contact.first_name = params[:first_name] || @contact.first_name
    @contact.middle_name = params[:middle_name] || @contact.middle_name
    @contact.last_name = params[:last_name] || @contact.last_name
    @contact.phone = params[:phone] || @contact.phone
    @contact.email = params[:email] || @contact.email
    @contact.image_url = params[:image_url] || @contact.image_url
    @contact.bio = params[:bio] || @contact.bio


    if @contact.save
      render "show.json.jbuilder"
    else
      render json: {errors: @contact.errors.full_message}, status: :unprocessable_entity 
    end
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    render json: {message: "Contact destroyed"}
  end
end