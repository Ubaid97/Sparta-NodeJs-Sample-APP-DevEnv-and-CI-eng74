# Sparta NodeJs Sample APP DevEnv and CI

This repo will be a dev env you can copy and setup by running vagrant up.


## Pre requisits
- Virtual box
- Vagrant
- Ruby
- bundler (ruby gem)

## Instructions & Step by Steps

1) Clone this repo
2) Run `vagrant up`
3) go to `devlopment.local` or `192.168.10.100`


### Running the tests

#### Integration tests
Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip

```bash
$ cd tests
$ bundle install
$ rake spec
```

#### Unit tests
ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

```bash
$ vagrant ssh app
$ cd /home/ubuntu/app/
$ pm2 stop app.js


$ cd /home/ubuntu/app/test
$ npm test

$ cd /home/ubuntu/app/
$ pm2 start app.js

```


## Branching


**creating a branch**

```bash
$ git checkout -b <branch>
```

**changing to existing branch**
```bash
$ git checkout <branch>
```

**Commit to branch as normal**
```bash
$ git add .
$ git commit -m "useful descriptive message"
```

**once commited, push specific branches to origin**

```bash
# git <action> <remote> <branch>
$ git push origin landing-page-title
> (...)
> Enumerating objects: 5, done.
> remote: Resolving deltas: 100% (2/2), completed with 2 local objects.
(...)
```




yello :zap:
