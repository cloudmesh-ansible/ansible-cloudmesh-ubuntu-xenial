Ubuntu xenial development environment setup
=========

this is a role for setting up a development environment on ubuntu xenial. this role installs the following items

    1. pycharm
    2. git
    3. mercurial
    4. emacs
    5. vim
    6. pip
    7. python
    8. jupyter
    9. dependencies
    
Instructions
------------

1 - connect to or otherwise access the machine you wish to setup the development environment on. In the case of using a cloudmesh launched virtual machine you can use the following commands::

    $ cm vm ssh 'machinename'
    
2 - It is assumed that this is a new machine and thus does not have ansible installed. Ansible is required for the role to run as it is an ansible-galaxy role. andsible can be installed by the user via the following command if it not already present on the machine::

    $ sudo apt-get install ansible
    
3 - Once connected you will need to install this role onto the chosen machine. this can be done using the following::

    $ ansible-galaxy install username.rolename

If you wish to install the role to a specific directory it can be done using a command such as this::

    $ ansible-galaxy install username.rolename --roles-path=~/directory/of/your/choosing/
    
4 - Now that the role has been installed on your machine it is time to deploy it. This can be done using the main.yml file located in the tasks directory of the role. It can be deployed by navigating to the tasks directory and using the following command::

    $ ansible-playbook main.yml
    
The role can otherwise be deployed from afar by providing the directory in the launch command as such::

    $ ansible-playbook ~/directoryofyourchoosing/ansible-cloudmesh-ubuntu-xenial/tasks/main.yml
    
the role sould now begin to set up your python development environment. If this is not the case,  please submit an issue ticket to the to the github repository detailing the issue you encountered::

    https://github.com/cloudmesh/ansible-cloudmesh-ubuntu-xenial

    

Requirements
------------

Any pre-requisites that may not be covered by Ansible itself or the role should be mentioned here. For instance, if the role uses the EC2 module, it may be a good idea to mention in this section that the boto package is required.

Role Variables
--------------

A description of the settable variables for this role should go here, including any variables that are in defaults/main.yml, vars/main.yml, and any variables that can/should be set via parameters to the role. Any variables that are read from other roles and/or the global scope (ie. hostvars, group vars, etc.) should be mentioned here as well.

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: username.rolename, x: 42 }

License
-------

BSD

Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed).
