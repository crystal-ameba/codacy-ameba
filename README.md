# Codacy Ameba

[![Build Status](https://travis-ci.org/veelenga/codacy-ameba.svg?branch=master)](https://travis-ci.org/veelenga/codacy-ameba)
[![Codacy Badge](https://api.codacy.com/project/badge/Grade/c7c17501a62e4e8cb66b75eb67354fcc)](https://app.codacy.com/app/veelenga/codacy-ameba?utm_source=github.com&utm_medium=referral&utm_content=veelenga/codacy-ameba&utm_campaign=Badge_Grade_Dashboard)

Tooling & Docker Definition for running [Ameba](https://github.com/veelenga/ameba) on [Codacy](https://www.codacy.com/)

*Implements the [Tool Developer Guide](https://support.codacy.com/hc/en-us/articles/207994725-Tool-Developer-Guide)*

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

```sh
shards install
crystal src/generate.cr
```

## Testing

Run regular unit tests: `crystal spec`

Run [Codacy Plugin Tests](https://github.com/codacy/codacy-plugins-test) against the docker image:

```sh
# In codacy-ameba
docker build . -t ameba/codacy:latest

# in codacy-plugins-test
sbt "runMain codacy.plugins.DockerTest all ameba/codacy:latest"
```

## Bump versions

- Crystal version should be updated in `Dockerfile` file (version of the image).
- Ameba version should be updated in `shard.yml`/`shard.lock` files.

## What is Codacy

[Codacy](https://www.codacy.com/) is an Automated Code Review Tool that monitors your technical debt, helps you improve your code quality, teaches best practices to your developers, and helps you save time in Code Reviews.

### Among Codacy’s features

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
