class ContactController < ApplicationController
  
  def new
  end

  def create
    @contact = Contact.new(contact_params)

    respond_to do |format|
      if @contact.save
        format.html { redirect_to thanks_path, notice: 'Thanks You for your submission' }
        format.json { render json: @contact, status: :created, location: @contact }
        # ContactMailer.thank_you_email(@client_contact).deliver_now
        # ContactMailer.to_admin_email(@client_contact).deliver_now
      else
        format.html { render action: "new" }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

private

  def contact_params
    params.require(:contact).permit!
  end


end
