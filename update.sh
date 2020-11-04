foo="`cat satis.json`"
git checkout -B -f gh-pages
git rm -f composer.json composer.lock README.md satis.json update.sh
echo $foo > satis.tmp.json
php $(pwd)/vendor/bin/satis build satis.tmp.json .
git rm satis.tmp.json -f
git add all.json index.html packages.json
git commit -m "update dependencies"
git push origin gh-pages
git rm -f all.json index.html packages.json
git checkout main -f