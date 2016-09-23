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

Of course you can use it as well.

## Variables

Since the setup is for myself you have to adjust the configuration
for your personnaly need. Especially you should change the
user name and email which is - of course - mine. Also the set of
vim plugins might be different and the configuration of the .vimrc.

## Setup

When you are done with your configuration the setup is simple:

```
./setup.sh
```

You are asked for the root password. It's required to be able to
install packages into the system.
