# Machine
This repository sets up a machine with my preferred tools. It works on both an
Ubuntu and a Mac OS X machine.

It is written in pure Bash script to ensure portability and ease the setup
process.

## User setup
SSH into the machine as the root user and create your personal user.
```bash
adduser mathias
```

Add this user to the sudoers group:
```bash
sudo adduser mathias sudo
```

Log in with the newly created user and set the current directory to ``machine``.
Now, simply just run the ``./bootstrap`` file and everything should be
configured for you.
