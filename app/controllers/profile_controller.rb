class ProfileController < ApplicationController
  def input
  end

  def display
    @username = params[:username]
  end
end
