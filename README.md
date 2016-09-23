# concept-setup

Welcome to the concept-setup repository.

## Intention

Main intention is to organize my development environment
avoiding to do it manually each time. You might ask why
so often? One reason that I want to have same environment
that I use at home also in the office. Another reason is
that I often have a temporary environment like Docker
and I require to do development there. With a provisioning
of the environment using Ansible it is very easy.

Of course you can use it as well. Probably best for you is
to create a copy of it.

## Variables

Since the setup is for myself you have to adjust the configuration
for your personal need. Especially you should change the
user name and email which is - of course - mine. Also the set of
vim plugins might be different and the configuration of the .vimrc.

## Setup

Before you require to have Ansible installed. I did this
by doing following:

```
$ pip install ansible
$ ansible --version|head -1
ansible 2.1.1.0
```

When you are done with your configuration the setup is simple:

```
./setup.sh
```

You are asked for the sudo password. It's required to be able to
install packages into the system.

## Future plans (todo)

- bash aliases with new role bash.
- make setup work for yum based environments.
- add role for installing Docker.
- provides script to start Docker container with this setup.
- ...

## Special hints

- Do not edit the files which have been provisioned. As an
  example a change to your .vimrc should finally be done in
  the .vimrc.j2 of your version of this project otherwise you
  would ovewrite your changes each time.

