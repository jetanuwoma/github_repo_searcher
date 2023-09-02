require 'rails_helper'

RSpec.describe RepositoriesController, type: :controller do
  it "renders the index view" do
    get :index
    expect(response).to render_template(:index)
  end

  it "renders the index view with search results" do
    post :search, params: { search_term: 'rails' }
    expect(response).to render_template(:index)
  end
end
