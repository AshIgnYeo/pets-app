class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:account]

  def home
  end

  def account
    @pets = Pet.all
  end
end
