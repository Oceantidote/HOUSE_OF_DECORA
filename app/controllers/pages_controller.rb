class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about, :services, :contact, :testimonials, :gallery]

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
  end
end
