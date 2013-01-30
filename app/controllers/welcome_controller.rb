class WelcomeController < ApplicationController
  def index
    User.create(:first_name => params["first_name"], :last_name => params["last_name"])
    # @users = User.all
    @users = User.where("first_name IS NOT NULL AND last_name IS NOT NULL")
  end
end
