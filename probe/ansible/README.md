```shell
nix-shell -p ansible
```

```shell
# 疎通確認
ansible 52.192.169.155 \
-m ping \
-i inventories/hosts \
-u isucon \
--private-key=~/.ssh/id_github
```

```shell
# install roles
# @see https://prometheus-community.github.io/ansible/branch/main/node_exporter_role.html#ansible-collections-prometheus-prometheus-node-exporter-role
ansible-galaxy collection install prometheus.prometheus

# install
OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES \
ansible-playbook \
-i inventories/hosts \
-u isucon \
--private-key="~/.ssh/id_github" \
--ask-become-pass \
install-node_exporter.yaml
```
