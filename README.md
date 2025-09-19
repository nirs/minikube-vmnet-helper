# vmnet-helper (automated mirror)

[![Test Installer Script](https://github.com/minikube-machine/vmnet-helper/actions/workflows/install-test.yaml/badge.svg)](https://github.com/minikube-machine/vmnet-helper/actions/workflows/install-test.yaml)

This repository provides automated reproducible mirror builds of the upstream project:  
For issues/credits/requests checkout upstream source: https://github.com/nirs/vmnet-helper

## Install

```sh
curl -fsSL https://github.com/minikube-machine/vmnet-helper/releases/latest/download/install.sh | bash
```

## Non interactive install

By default install.sh is interactive. To disable interaction use:

```sh
curl -fsSL https://github.com/minikube-machine/vmnet-helper/releases/latest/download/install.sh | sudo VMNET_INTERACTIVE=0 bash
```
