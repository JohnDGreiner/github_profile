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

  def test_returns_repo_names
    call = RepoCall.new("masonfmatthews")
    assert_equal "api_experiments", call.repo_names[0]
  end

  def test_returns_repo_urls
    call = RepoCall.new("masonfmatthews")
    assert_equal "https://github.com/masonfmatthews/api_experiments", call.repo_urls[0]
  end

  def test_returns_repo_descriptions
    call = RepoCall.new("masonfmatthews")
    assert_equal "Assignments for the Rails course at The Iron Yard's Durham Campus", call.repo_descriptions[8]
  end

  def test_returns_updated_at
    call = RepoCall.new("masonfmatthews")
    assert_equal "2015-05-25T13:07:44Z", call.repo_update_dates[0]
  end

  def test_returns_languages
    call = RepoCall.new("masonfmatthews")
    assert_equal "Ruby", call.repo_languages[0]
  end

  def test_returns_stargazer_counts
    call = RepoCall.new("masonfmatthews")
    assert_equal 0, call.stargazer_counts[0]
  end

  def test_returns_forks_counts
    call = RepoCall.new("masonfmatthews")
    assert_equal 0, call.fork_counts[0]
  end

  def test_number_of_repos
    call = RepoCall.new("masonfmatthews")
    assert_equal 10, call.number_of_repositories
  end

end
