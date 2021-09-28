class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:account]

  def home
    if user_signed_in?
      @pets = current_user.pets
    end
  end

  def account
    @pets = Pet.all
  end
end
