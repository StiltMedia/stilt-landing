class Mailer < ApplicationMailer

  def contact_form(contact)
    @contact = contact
    mail :to  => ["mark@stiltmedia.com"], :from => "Stilt-Landing@stiltmedia.com", :subject => "Contact Form | Stilt Landing"
  end

end
