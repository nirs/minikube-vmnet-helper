# vmnet-helper (Automated Mirror Builds)

This repository provides automated, reproducible builds of the upstream project:  
Upstream source: https://github.com/nirs/vmnet-helper


License:
Inherits the license of the upstream project.

Feedback:
Any issues should be created in upstream project https://github.com/nirs/vmnet-helper/issues this project only mirros the binaries.

# Download & Install

```
machine="$(uname -m)"
archive="vmnet-helper-$machine.tar.gz"
curl -LOf "https://github.com/minikube-machine/vmnet-helper/releases/latest/download/$archive"
sudo tar xvf "$archive" -C / opt/vmnet-helper
rm "$archive"
```

