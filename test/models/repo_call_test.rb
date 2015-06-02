require 'test_helper'
require 'minitest/pride'


# require './app/models/repo_call.rb'

# class Repocall
#   def get_data
#     JSON.parse(File.open("./test/models/repo_call.json").read)
#   end
# end


class RepoCallTest < MiniTest::Test

  def test_create_call
    p RepoCall.new("john")
  end


end
