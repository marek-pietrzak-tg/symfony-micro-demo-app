# symfony-micro-demo-app
Convenient Symfony app skeleton based on MicroKernelTrait.
Made as a base for demo purposes.
Comes with separate files:
- routing.yml
- config.yml
- services.yml

and an example greeter controller.

Run on the host machine
=======================

To start, install composer dependencies:
```
php composer.phar install
```

run a built-in server:
```
bin/console server:run
```

and send a curl GET request to the Greeting controller:
```
curl http://localhost:8000/Marek -i
```

Run with the docker
===================

If you have a `docker` and `docker-compose` installed on your machine 
and want to start the demo application with the docker, 
you have to build and start the docker containers:

```
docker-compose up
```

You can list containers with:

```
docker-compose ps
```

Check the `app` IP address with:

```
docker-machine ls
```

And use that address to communicate with the application, for example for `192.168.99.100`:

```
curl 192.168.99.100/Marek -i
```

Enjoy!
