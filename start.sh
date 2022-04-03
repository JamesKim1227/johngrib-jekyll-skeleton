bundle update && bundle install
./generateData.js

bundle exec jekyll server --watch --host 0.0.0.0
exit 0

if [[ $1 = "docker" ]]; then
    docker-compose up
elif [[ $1 = "watch" ]]; then
    bundle exec jekyll server --watch --host 0.0.0.0
elif [[ $1 = "inc" ]]; then
    bundle exec jekyll server --incremental --trace
fi
