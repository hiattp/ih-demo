class WelcomeController < ApplicationController
  def index
    User.create(:first_name => params["first_name"], :last_name => params["last_name"])
    @users = User.where("first_name IS NOT NULL AND last_name is NOT NULL")
  end
end