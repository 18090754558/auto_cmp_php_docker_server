# auto_cmp_php_docker_server
cmp: alpine (edge) + php7 (latest) + php7-opcache + php7-swoole

# Links

* [SWOOLE]
```
http://swoole.com/
http://github.com/swoole/swoole-src/
```

* [LINUX] install php7 w+ swoole in user space:
```
https://github.com/wanjochan/misctools/raw/master/php-fpm-swoole-one-click.sh
```

* [MAC] install php7 with brew
```bash
# install brew
# http://brew.sh/
/usr/bin/ruby -e "$(curl -fsSL https://github.com/Homebrew/install/raw/master/install)"

# install php70 +fpm +opcache +swoole
brew install php70 --with-fpm
brew install php70-opcache
brew install php70-swoole
brew unlink php70 && brew link php70

sudo brew unlink php70
sudo brew remove php70*
```

# CHN: 中文说明
适合用于制作api server
* 原理：用 swoole-http-server 做前端服务器，把动态请求转发给php-fpm处理，其它允许的静态文件则直接处理
* 支持docker直接运行，便于快速开发甚至生产环境部署
目标并不是要取代nginx，而是想成为一个容易快速部署的纯php自治的运行环境，而且利用swoole的众多优点，焕发php新生
