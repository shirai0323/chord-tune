class PagesController < ApplicationController
  skip_before_action :require_login, only: [:about, :help_page, :policy]
  
  def about
  end

  def help_page
  end

  def policy
  end
end
