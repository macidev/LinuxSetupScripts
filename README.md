# LinuxSetupScripts
Since I had to set up my Linux system a few times, I got the recommendation to build ansible scripts.

# Steps
- pip install ansible (maybe pip must be installed first)
- ansible-config init --disabled > ansible.cfg
- ansible-playbook preparation.yml --extra-vars='ansible_become_pass='
