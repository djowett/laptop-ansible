# Ansible playbook to configure my laptop

This playbook is my laptop's configuration , running Debian or Ubuntu distributions.

# Pre-requisites

You need to install the base OS, and then (obviously) git and ansible, before cloning this repo.
You will also need to install any extra ansible requirements

```console
sudo apt install git ansible
git clone git@github.com:djowett/laptop-ansible.git
ansible-galaxy collection install -r requirements.yml
```

You can run the `update-local.sh` script from you local clone.


## Run the installation

```console
./update-local.sh
```


## Test on vagrant box

```console
./vagrant-test.sh
```

