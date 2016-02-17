Build: [![Circle CI](https://circleci.com/gh/teonite/docker-nginx-dynamic-sites.svg?style=svg)](https://circleci.com/gh/teonite/docker-nginx-dynamic-sites) [![](https://badge.imagelayers.io/teonite/nginx-dynamic-sites:latest.svg)](https://imagelayers.io/?images=teonite/nginx-dynamic-sites:latest 'Get your own badge on imagelayers.io')

[![TEONITE](http://teonite.com/img/inorbit_by_tnt.png)](http://teonite.com/img/inorbit_by_tnt.png)

docker-nginx-dynamic-sites is a simple solution to have one NGINX docker/container instance for multiple domains (virtual hosts).

The only thing you need to do is:

1. Launch the contener
2. Set all domain names to the IP that the container is exposed
3. Put all your sites to /sites/ (volume exposed) directory with the domain names.

### How does it work?

1. detects and "creates" a virtual host based on the requested URL domain
2. tries to find a folder with the domain name in the `/sites/` directory (eg. `/sites/domainname.com`)
3. If the folder exists, site is served - if not, the default one is served (`/sites/default`)

We've created this simple solution, as our whole infrastructure runs on Docker - and we wanted to have only one NGINX instance for all static sites.

### Usage

To run it:

    $ docker run -d -p 80:80 -v /path/to/sites:/sites/ teonite/nginx-dynamic-sites

### Log files

There is only one error log file (`/var/log/nginx/error.log`). Access logs are created with domain name eg. `/var/log/nginx/domainname.com.access.log`.
