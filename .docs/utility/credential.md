# Setup ssh credentials

Either generate new ones with ssh-keygen or copy existing one (from the old machine):
```shell
old_machine $ scp ~/.ssh/id_rsa ~/.ssh/id_rsa.pub <id>@<local ip>:~/.ssh
```

It is important to make sure that the private key as the right access right (*e.g.* 400 or 600 -- not 700) for it to be accepted by github.

# GnuPG usage
TODO
