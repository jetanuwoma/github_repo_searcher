class RepositoriesController < ApplicationController
  def index; end

  def search
    client = Octokit::Client.new
    @repositories = client.search_repositories(params[:search_term]).items
    render :index
  end
end