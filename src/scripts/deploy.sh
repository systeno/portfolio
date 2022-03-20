#!/usr/bin/env sh
# abort on errors
set -e
# build
[ -e dist ] && sudo rm -r dist
npm run build
# navigate into the build output directory
cd dist
# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

# Maybe?
# See: https://learnvue.co/2020/09/how-to-deploy-your-vue-app-to-github-pages/#tip-handling-vue-router-with-a-custom-404-page
# cp index.html 404.html

git init
git add -A
git commit -m 'deploy'
git branch -m master main
git push -f git@github.com:systeno/portfolio.git main:gh-pages
cd -