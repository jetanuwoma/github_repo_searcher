require 'rails_helper'

RSpec.describe GithubService do
  describe '.search_repositories' do
    let(:search_term) { 'rails' }
    let(:page) { 1 }
    let(:stubbed_response) do
      OpenStruct.new(
        items: [OpenStruct.new(full_name: 'rails/rails', html_url: 'https://github.com/rails/rails')],
        total_count: 1
      )
    end

    before do
      allow_any_instance_of(Octokit::Client).to receive(:search_repositories).with(search_term, page: page).and_return(stubbed_response)
    end

    it 'returns paginated repository results' do
      results = GithubService.search_repositories(search_term, page)
      expect(results.first.full_name).to eq('rails/rails')
      expect(results.first.html_url).to eq('https://github.com/rails/rails')
    end
  end
end
