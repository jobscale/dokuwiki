### run with container
```
git clone https://github.com/jobscale/dokuwiki.git
cd dokuwiki
main() {
  docker build . -t local/dokuwiki:0.0.1
  docker run --rm -d --name dokuwiki -p 80:80 local/dokuwiki:0.0.1
  timeout 5 docker logs -f php-fpm
  http_proxy= curl -v 127.0.0.1
} && main
```
