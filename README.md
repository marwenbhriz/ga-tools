# GA Tools: GA App setup in gcp 
## Prerequisites
> Note: Commands were performed in the OS X command line.
> Commands in other unix inspired systems, like the Linux command line, should work equivalently.
> Note. this commands should execute from jump server.
> Note. we need to install helm 3 too

+ [Prerequisites](#Prerequisites)
    + [Shell Environment and Editor](#Shell)
    + [Installing Homebrew](#Homebrew)
    + [Installing Docker](#Docker)
    + [Installing Kubernetes](#Kubernetes)
    + [Installing Google CLI](#Google)
    + [Installing HashiCorp Terraform](#Terraform)
    + [create Alias](#Alias)


### #Shell

You can check your shell by running the command echo $0.
> Note: if you find the default shell its not bash 'zsh' you need to swith to bash by executing this command.

```sh
// switch to bash
exec bash

// switch to zsh
exec zsh
```

### #Homebrew

```sh
// curl and install homebrew

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

// add brew to path

export HOMEBREW_PREFIX="/opt/homebrew";
export HOMEBREW_CELLAR="/opt/homebrew/Cellar";
export HOMEBREW_REPOSITORY="/opt/homebrew";
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin${PATH+:$PATH}";
export MANPATH="/opt/homebrew/share/man${MANPATH+:$MANPATH}:";
export INFOPATH="/opt/homebrew/share/info:${INFOPATH:-}";

// verify brew setup

brew doctor
```

### #Docker

you may also need to go with docker installation [Docker Desktop](https://www.docker.com/products/docker-desktop) which is available for Mac and Windows. Docker Desktop provides an option to start a fully functional Kubernetes environment.

### #Kubernetes

Kubectl client [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/). 

### #Google

We need to install the gcloud cli [gcloud-cli](https://cloud.google.com/sdk/docs/install)

### #Terraform

Terraform [terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli). 

```sh
// install terraform
brew tap hashicorp/tap
brew install hashicorp/tap/terraform
brew install tfenv
brew install terracost
// verify terraform
terraform -help
```

## Databases & cluster-related services
* [Mysql](./db/mysql/README.md)

## Tools
* [Prometheus](./prometheus/README.md)
* [Grafana](./grafana/README.md)
* [sonarqube](./sonarqube/README.md)
* [Loki](./logging/README.md)
* [Slack](./slack/README.md)