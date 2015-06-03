class ProfileController < ApplicationController
  def input
  end

  def display
    @profile = RepoCall.new(params[:username])
  end
end
