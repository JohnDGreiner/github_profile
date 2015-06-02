class RepoCall

  def initialize(username)
    @username = username
    @repo = get_data
  end

  def repo_name
    #  @repo.each {|n| n["name"]}
    @repo.map {|n| n["name"]}
  end

  def get_data
    HTTParty.get("https://api.github.com/users/masonfmatthews/repos?access_token=#{ENV['GITHUB_TOKEN']}")
  end

end
