#docker run -it --rm --name pappacena-github-io -v "$PWD":/usr/src/myapp -w /usr/src/myapp ruby:2.2.2 bundle exec jekyll serve
#docker start -ai pappacena-github-io_1
echo $@
docker run -it --rm -v $PWD:/usr/src/app -w /usr/src/app/blog --name pappacena-github-io_1 -p 4000:4000 pappacena-github-io $@
