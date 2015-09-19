class Contact < ActiveRecord::Base

  after_create :contact_mailer

  def contact_mailer
    contact = self
    Mailer.contact_form(contact).deliver_now
  end

end
