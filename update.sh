foo="`cat satis.json`"
git checkout gh-pages
git rm -rf .
echo $foo > satis.json
php $(pwd)/vendor/bin/satis build satis.json dist
cd dist
git add .
git commit -m "update dependencies"
git push origin gh-pages
git checkout main