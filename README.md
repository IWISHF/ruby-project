# Setup Environment

## Install ruby version management tools
- System: ubuntu
- Command

``` sh
# add dependence key
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB

# Download install script and run it
\curl -sSL https://get.rvm.io | bash -s stable

# Add rvm to system environment
source /home/yt00577/.rvm/scripts/rvm
```


## Install ruby base on rvm

```sh

rvm install <version>

```