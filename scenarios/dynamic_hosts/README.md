# Dynamic Hosts

Scenario for when we do not want to use an inventory and instead load the inventory during runtime.

We have a list of hosts in our custom yaml format and load this at the start of the playbook. Afterwards we run plays against the specified groups which we loaded earlier.

The response.yml is loaded from somewhere else, like an API, in practice.

```bash
docker compose up -d
ansible-playbook run.yml -i "localhost"
```
