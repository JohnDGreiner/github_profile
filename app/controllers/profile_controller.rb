class ProfileController < ApplicationController
  def input
  end

  def display
    @repositories = RepoCall.new(params[:username])
  end
end
