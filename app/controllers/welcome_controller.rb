class WelcomeController < ApplicationController

  before_filter :current_page

  def index
  end

  def aboutus
  end

  def contact
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
