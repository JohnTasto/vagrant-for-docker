# Vagrant for Docker

A lightweight Vagrant box for working with Docker.

### Requirements

- Vagrant
- Virtualbox

### Usage

Add any ports to forward to the `Vagrantfile`. Then from the terminal, run:
```
vagrant up
vagrant ssh
```

The current host working directory is synced with ~./vagrant on the client.
Run any Docker containers from inside the Vagrant box.

### License

MIT
