[![Satis](https://github.com/Ce-Kw/satis/actions/workflows/satis.yml/badge.svg)](https://github.com/Ce-Kw/satis/actions/workflows/satis.yml)
[![pages-build-deployment](https://github.com/Ce-Kw/satis/actions/workflows/pages/pages-build-deployment/badge.svg)](https://github.com/Ce-Kw/satis/actions/workflows/pages/pages-build-deployment)

# Ce-Kw Composer Repository

https://ce-kw.github.io/satis/

> Note: Satis website is served from the docs folder.

## Setting up this repository in your projects

Add this Composer repository to your project's composer.json file, then you can require these private packages just like you would with one from Packagist.

```
{
  "repositories": [{
    "type": "composer",
    "url": "https://ce-kw.github.io/satis/"
  }],
  "minimum-stability": "dev",
  "prefer-stable": true
}
```

## Updating packages
Packages are automatically updated by GitHub Action workflows triggered by other repos or by pushing to this main branch.

## Adding new packages
To add new packages edit the `satis.json` file, commit and push.

The repo of the very package should contain the following workflow file:  
`satis.yml`
```yml
name: Satis
on:
  workflow_dispatch:
  push:
    branches:
      - master
jobs:
  update-satis:
    runs-on: ubuntu-latest
    steps:
      - name: trigger satis update
        uses: convictional/trigger-workflow-and-wait@v1.6.1
        with:
          owner: Ce-Kw
          repo: satis
          github_token: ${{ secrets.SATIS_PERSONAL_ACCESS_TOKEN }}
          workflow_file_name: satis.yml
          ref: main
          wait_workflow: false
```
You need to create a GitHub personal access token with `public_repo` checked and store it under the repos secrets with the name `SATIS_PERSONAL_ACCESS_TOKEN`.
