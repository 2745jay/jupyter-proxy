# Nginx Proxy using docker

### Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

* docker
* docker-compose
* git
* curl
* openssl

### Installing


```
git clone https://github.com/2745jay/jupyter-proxy.git
```

```
cd jupyter-proxy
```

```
docker-compose up -d
```


### Running the live tests


For local testing, set your IP to jupyter.lab312.net in /etc/hosts

```
192.168.1.1     jupyter.lab312.net
```


[https://juypter.lab312.net](https://juypter.lab312.net) 

```
curl -k https://jupyter.lab312.net
```

```
curl -SIXGET -k https://jupyter.lab312.net
```

```
openssl s_client -showcerts -connect jupyter.lab312.net:443
```

[SSL Checker](https://www.sslshopper.com/ssl-checker.html#hostname=jupyter.lab312.net)


### Authors

* Jay Tischler - Docker work
* [Jupyter](https://github.com/jupyter/docker-stacks)

