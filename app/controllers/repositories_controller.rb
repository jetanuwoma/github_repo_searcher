class RepositoriesController < ApplicationController
  def index; end

  def search
    client = Octokit::Client.new
    page_number = params[:page] || 1

    results = client.search_repositories(params[:search_term], page: page_number)
    @repositories = Kaminari.paginate_array(results.items, total_count: results.total_count).page(page_number).per(30)

    render :index
  end
end