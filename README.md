# vmnet-helper

auto releaser for building and hosting built from https://github.com/nirs/vmnet-helper


# download and install 

```
machine="$(uname -m)"
archive="vmnet-helper-$machine.tar.gz"
curl -LOf "https://github.com/minikube-machine/vmnet-helper/releases/latest/download/$archive"
sudo tar xvf "$archive" -C / opt/vmnet-helper
rm "$archive"
```