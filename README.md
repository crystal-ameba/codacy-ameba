# Codacy Ameba

Tooling & Docker Definition for running [Ameba](https://github.com/veelenga/ameba) on [Codacy](https://www.codacy.com/)

## Usage

Build the docker image

```
docker build . -t ameba/codacy
```

Run on a project

```
docker run -it -v $srcDir:/src ameba/codacy
```

Regenerate `docs` folder:

```
shards install
crystal src/codacy-ameba.cr
```

## What is Codacy?

[Codacy](https://www.codacy.com/) is an Automated Code Review Tool that monitors your technical debt, helps you improve your code quality, teaches best practices to your developers, and helps you save time in Code Reviews.

### Among Codacy’s features:

- Identify new Static Analysis issues
- Commit and Pull Request Analysis with GitHub, BitBucket/Stash, GitLab (and also direct git repositories)
- Auto-comments on Commits and Pull Requests
- Integrations with Slack, HipChat, Jira, YouTrack
- Track issues in Code Style, Security, Error Proneness, Performance, Unused Code and other categories

Codacy also helps keep track of Code Coverage, Code Duplication, and Code Complexity.

Codacy supports PHP, Python, Ruby, Java, JavaScript, and Scala, among others.

## Contributing

1. Fork it (<https://github.com/your-github-user/codacy-ameba/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Vitalii Elenhaupt](https://github.com/your-github-user) - creator and maintainer
