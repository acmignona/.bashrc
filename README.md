# .bashrc
The purpose of this repo is to keep track of my favorite custom functions. 

To use, simply add the bash lines to your ~/.bashrc then run `source ~/.bashrc`

## Ansible Playbooks:
For the bashrc aliases to work properly, be sure to use the playbooks found within this repo. Also edit the path whichever path you decide to put your playbooks. 

### `af` 
Simply run `af` command and explore the available ansible facts that can be used in playbooks. 

### `ahv`
Simply run `ahv <ansible_node_name>` and explore the available ansible variables that can be used in playbooks. 


### `acv`
`acv`: When prompted, enter your ansible variable/fact to test. This is a useful after identifying a variable from `af` or `ahv` that you would like to use. Simply test that variable with this command before implementing it in another playbook. 

#### Example: 
```
# example one: 
acv
{{ inventory_hostname }}

# example two:
acv
{{ ansible_facts.mounts | length }}
```
![image](https://github.com/acmignona/.bashrc/assets/81653524/b5c03614-5532-4dd5-8ad1-b86bfca8ef36)
