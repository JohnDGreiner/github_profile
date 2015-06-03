require 'test_helper'
require 'minitest/pride'


require './app/models/repo_call.rb'

class Repocall
  def get_repo
    JSON.parse(File.open("./test/models/repo_call.json").read)
  end

  def get_user
    JSON.parse(File.open("./test/models/user_call.json").read)
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

  def test_user_login
    call = RepoCall.new("masonfmatthews")
    assert_equal "masonfmatthews", call.user_login
  end

  def test_avatar_url
    call = RepoCall.new("masonfmatthews")
    assert_equal "https://avatars.githubusercontent.com/u/5350842?v=3", call.avatar_url
  end

  def test_user_name
    call = RepoCall.new("masonfmatthews")
    assert_equal "Mason F. Matthews", call.user_name
  end

  def test_number_of_followers
    call = RepoCall.new("masonfmatthews")
    assert_equal 24, call.number_of_followers
  end

  def test_number_following
    call = RepoCall.new("masonfmatthews")
    assert_equal 6, call.number_following
  end

  def test_company
    call = RepoCall.new("masonfmatthews")
    assert_equal "The Iron Yard", call.company
  end

  def test_location
    call = RepoCall.new("masonfmatthews")
    assert_equal "Durham, NC", call.location
  end

  def test_created_at
    call = RepoCall.new("masonfmatthews")
    assert_equal "2013-08-31T02:31:11Z", call.created_at
  end

end
