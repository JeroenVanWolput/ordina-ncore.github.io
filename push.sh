setup_git() {

  git config --global user.email "tim.hulstaert@telenet.be"

  git config --global user.name "timhulstaert"

}



commit_website_files() {

  git checkout -b gh-pages

  git add . *.html

  git commit --message "Travis build: $TRAVIS_BUILD_NUMBER"

}



upload_files() {

  git remote add origin-pages https://${GH_TOKEN}@github.com/ordina-ncore/ordina-ncore.github.io.git > /dev/null 2>&1

  git push --quiet --set-upstream origin-pages gh-pages 

}



setup_git

commit_website_files

upload_files