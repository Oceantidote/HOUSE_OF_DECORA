class ContactMailer < ApplicationMailer
  def send_email_to_contact(contacts)
    @contacts = contacts
    mail(to: 'ifeodugbesan@yahoo.com', from: "#{@contacts[:email]}", subject: "#{@contacts[:message].truncate(50)}")
  end
end
