class WelcomeController < ApplicationController

  before_filter :current_page

  def index
  end

  def aboutus
  end

  def contact
    @enquiry = Enquiry.new
  end

  def mailer
    @enquiry = Enquiry.new(params[:enquiry])

    if @enquiry.save
      flash[:alert] = "Your enquiry was sent to us. We will be in touch shortly."
      EnquiryMailer.mail(@enquiry).deliver
    else
      flash[:alert] = "There was an error. Please try again."
    end
    redirect_to :action => "contact"

  end

  def services
  end

  def portfolio
  end

  private

  def current_page
    @page = params[:action]
  end

end
