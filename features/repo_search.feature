Feature: Search for GitHub Repositories
  Scenario: User searches for a repo
    Given I am on the homepage
    When I fill in "search_term" with "rails" and press "Search"
    Then I should see "rails/rails"