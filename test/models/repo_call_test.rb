require 'test_helper'
require 'minitest/pride'


require './app/models/repo_call.rb'

class Repocall
  def get_data
    JSON.parse(File.open("./test/models/repo_call.json").read)
  end
end


class RepoCallTest < MiniTest::Test

  def test_repocall_exists
    assert RepoCall
  end

  def test_returns_repo_name
    call = RepoCall.new("masonfmatthews")
    assert_equal "api_experiments", call.repo_name[0]
  end

  def test_returns_repo_url
    call = RepoCall.new("masonfmatthews")
    assert_equal "https://github.com/masonfmatthews/api_experiments", call.repo_url[0]
  end

  def test_returns_repo_description
    call = RepoCall.new("masonfmatthews")
    assert_equal "Assignments for the Rails course at The Iron Yard's Durham Campus", call.repo_description[8]
  end

  def test_returns_updated_at
    call = RepoCall.new("masonfmatthews")
    assert_equal "2015-05-25T13:07:44Z", call.repo_updated_at[0]
  end

  def test_returns_language
    call = RepoCall.new("masonfmatthews")
    assert_equal "Ruby", repo_language[0]
  end

  def test_returns_stargazer_count
    call = RepoCall.new("masonfmatthews")
    assert_equal 0, call.stargazer_count[0]
  end

  def test_returns_forks_count
    call = RepoCall.new("masonfmatthews")
    assert_equal 0, call.fork_count[0]
  end

end
