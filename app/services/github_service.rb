class GithubService
  def initialize(search_term, page=1)
    @client = Octokit::Client.new
    @search_term = search_term
    @page = page
  end

  def search_repositories
    Rails.cache.fetch(["github-repo", @search_term, @page], expires_in: 1.hour) do
      results = @client.search_repositories(@search_term, page: @page)
      Kaminari.paginate_array(results.items, total_count: results.total_count).page(@page).per(30)
    end
  end

  def self.search_repositories(search_term, page=1)
    new(search_term, page).search_repositories
  end
end
