# Ce-Kw Composer Repository

https://ce-kw.github.io/satis/

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
To update existing packages run `sh update.sh`.

## Adding new packages
To Add new packages edit the satis.json file and run `sh update.sh`.  
If this is your first time cloning the repo run `composer install` first. 

> Note: Composer repository is in docs folder