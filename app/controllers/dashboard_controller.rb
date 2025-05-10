class DashboardController < ApplicationController
  before_action :require_login

  def show
    @chatrooms = Room.all
  end
end
