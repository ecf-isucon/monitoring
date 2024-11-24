```shell
nix-shell -p ansible
```

```shell
# 疎通確認
ansible {{ target ip address }} \
-m ping \
-i inventories/hosts \
-u {{ ssh user name }} \
--private-key={{ path to private key }}
```

```shell
# install roles
# @see https://prometheus-community.github.io/ansible/branch/main/node_exporter_role.html#ansible-collections-prometheus-prometheus-node-exporter-role
ansible-galaxy collection install prometheus.prometheus

# install
OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES \
ansible-playbook \
-i inventories/hosts \
-u zerosum \
--private-key="~/.ssh/id_github" \
--ask-become-pass \
install-node_exporter.yaml
```
