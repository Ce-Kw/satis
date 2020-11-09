git checkout -B gh-pages
php $(pwd)/vendor/bin/satis build satis.json .
git add all.json index.html packages.json
cd p2 && git add . && cd ..
git status
git commit -m "update dependencies"
git push origin gh-pages -f
git rm -rf all.json index.html packages.json p2
git checkout main