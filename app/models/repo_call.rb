class RepoCall

  def initialize(username)
    @username = username
    @repo = get_data
  end

  def get_data

    HTTParty.get("https://api.github.com/users/masonfmatthews/repos?access_token=#{ENV['GITHUB_TOKEN']}")

  end

end
