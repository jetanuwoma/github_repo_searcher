class RepositoriesController < ApplicationController
  def index; end

  def search
    @repositories = GithubService.search_repositories(params[:search_term], params[:page])
    render :index
  rescue Octokit::TooManyRequests
    flash[:error] = "GitHub API rate limit exceeded. Please wait a moment and try again."
    redirect_to root_path and return
  end
end