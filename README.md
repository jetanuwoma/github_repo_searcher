# GitHub Repo Searcher

A simple web app to search and display public repositories from GitHub based on provided search terms.

## Features

- Uses the GitHub API to fetch and display repository data.
- Results are paginated using Kaminari.
- Built with Rails and Octokit.

## Prerequisites

Before you begin, ensure you have met the following requirements:

- **Ruby**: Check version with `ruby -v`. Recommended version: `2.7.2` or higher.
- **Rails**: Check version with `rails -v`. Recommended version: `6.1.3` or higher.
- **Bundler**: Install with `gem install bundler`.

## Setup

1. **Clone the repository**:

   ```bash
   git clone git@github.com:jetanuwoma/github_repo_searcher.git
   cd github-repo-searcher
   ```

2. **Install Dependencies**:

   ```bash
   bundle install
   ```

3 **Run the server**:

   ```bash
   rails s
   ```

   Visit `http://localhost:3000` in your browser.

## Running Tests

We use RSpec for unit testing:

```bash
bundle exec rspec
```

## Usage

1. Input your search term in the provided field.
2. The repositories will be displayed below the input.
3. Use the pagination links to navigate through pages of results.

## Contributing

If you'd like to contribute, please fork the repository and make changes as you'd like. Pull requests are warmly welcome.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

Distributed under the MIT License. See `LICENSE` for more information.
