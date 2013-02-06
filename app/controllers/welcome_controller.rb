class WelcomeController < ApplicationController
  def index
    User.create(:first_name => "Diemmi", :last_name => "Pham")
    @users = User.all
  end
end