class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about, :services, :contact, :testimonials, :gallery, :send_email]

  def home
  end

  def about
  end

  def services
  end

  def contact
  end

  def testimonials
  end

  def gallery
  end

  def send_email
    contacts = params["contact"]
    if ContactMailer.send_email_to_contact(contacts).deliver_now
      flash[:alert] = 'Your message has been sent'
    else
      render '/contacts'
    end
    redirect_to root_path
  end
end
