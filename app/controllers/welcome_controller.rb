class WelcomeController < ApplicationController
  def index
    User.create(:first_name => params["first_name"], :last_name => params["last_name"])
    @users = User.all
  end
end
