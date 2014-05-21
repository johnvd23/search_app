class StaticPagesController < ApplicationController
  def home
      @contact = current_user.contacts.build if signed_in?
    end

  def help
  end
  
  def about
  end
end
