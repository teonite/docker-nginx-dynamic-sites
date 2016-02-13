docker-nginx-dynamic-sites is a container only with NGINX that:

1. detects and "creates" a virtual host based on the requested URL domain
2. tries to find a folder with the domain name in the `/sites/` directory (eg. `/sites/domainname.com`)
3. If the folder exists, site is served - if not, the default one is served (`/sites/default`)

We've created this simple solution, as our whole infrastructure runs on Docker - and we wanted to have only one NGINX instance for all static sites.

### Usage

To run it:

    $ docker run -d -p 80:80 -v /path/to/sites:/sites/ teonite/docker-nginx-dynamic-sites

