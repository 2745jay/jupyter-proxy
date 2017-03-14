# Nginx Proxy using docker

### Prerequisites

* docker
* docker-compose

### Installing

For local testing, set your IP to jupyter.lab312.net in /etc/hosts

192.168.1.1     jupyter.lab312.net

```
git clone https://github.com/2745jay/jupyter-proxy.git
```

```
cd jupyter-proxy
```

```
docker-compose up -d
```

Starting jupyterproxy_application_1

Starting jupyterproxy_proxy_1


### Testing

```
curl -k https://jupyter.lab312.net
```

```
curl -SIXGET -k https://jupyter.lab312.net
```

```
openssl s_client -showcerts -connect jupyter.lab312.net:443
```

https://www.sslshopper.com/ssl-checker.html#hostname=jupyter.lab312.net


### Authors

* Jay Tischler - Docker work
*  [Jupyter](https://github.com/jupyter/docker-stacks)
