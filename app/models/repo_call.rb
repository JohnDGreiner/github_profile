class RepoCall
  attr_reader :repo
  def initialize(username)
    @username = username
    @repo = get_repo
    @user = get_user
  end

  def repo_names
    @repo.map { |n| n["name"]}
  end

  def repo_urls
    @repo.map { |m| m["html_url"]}
  end

  def repo_descriptions
    @repo.map { |d| d["description"]}
  end

  def repo_update_dates
    @repo.map { |u| u["updated_at"]}
  end

  def repo_languages
    @repo.map { |l| l["language"]}
  end

  def stargazer_counts
    @repo.map { |s| s["stargazers_count"]}
  end

  def fork_counts
    @repo.map { |f| f["forks"]}
  end

  def number_of_repositories
    @repo.length
  end

  def user_login
    @user["login"]
  end

  def avatar_url
    @user["avatar_url"]
  end

  def user_name
    @user["name"]
  end

  def number_of_followers
    @user["followers"]
  end

  def number_following
    @user["following"]
  end

  def company
    @user["company"]
  end

  def location
    @user["location"]
  end

  def created_at
    @user["created_at"]
  end

  def get_repo
    HTTParty.get("https://api.github.com/users/#{@username}/repos?access_token=#{ENV['GITHUB_TOKEN']}")
  end

  def get_user
    HTTParty.get("https://api.github.com/users/#{@username}?access_token=#{ENV['GITHUB_TOKEN']}")
  end

end
