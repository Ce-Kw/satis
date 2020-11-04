foo="`cat satis.json`"
git checkout gh-pages
echo $foo > satis.json
php $(pwd)/vendor/bin/satis build satis.json dist
git commit -a -m "update dependencies"
git push origin gh-pages
git checkout main