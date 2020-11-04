foo="`cat satis.json`"
git checkout gh-pages
git rm -rf .
echo $foo > satis.tmp.json
php $(pwd)/vendor/bin/satis build satis.tmp.json dist
cd dist
git add .
git commit -m "update dependencies"
git push origin gh-pages
git checkout main