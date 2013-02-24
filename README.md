chef-repo
=========

my chef-solo sample.

```sh
sudo yum install git -y

mkdir workspace
cd workspace

git clone git://github.com/wiredool/chef-repo.git
cd chef-repo
git submodule init
git submodule update

sudo sh run-chef-solo.sh
```
