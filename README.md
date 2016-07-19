Ubuntu xenial development environment setup
=========

This role deploys a development environment on ubuntu xenial taht also includes cloudmesh. It contains the 
the following items

    1. cloudmesh
    2. pycharm
    3. git
    4. mercurial
    5. emacs
    6. vim
    7. pip
    8. python
    9. jupyter
    10. dependencies
    
Status
------

This role is work in progress. It is already usable and if you find missing features and components, let us know and we try to add them if possible. 

Instructions
------------
note :  ansible-playbook -i 'localhost ansible_connection=local,' /path/to/playbook.yml 

1. Connect to or otherwise access the machine you wish to setup the development environment on. In the case of using a cloudmesh launched virtual machine you can use the following commands::

        $ cm vm ssh 'machinename'
    
2. It is assumed that this is a new machine and thus does not have ansible installed. Ansible is required for the role to run as it is an ansible-galaxy role. andsible can be installed by the user via the following command if it not already present on the machine::

        $ sudo apt-get install ansible
    
3. Once connected you will need to install this role onto the chosen machine. this can be done using the following::

        $ ansible-galaxy install username.rolename

If you wish to install the role to a specific directory it can be done using a command such as this::

    $ ansible-galaxy install username.rolename --roles-path=~/directory/of/your/choosing/
    
4. Now that the role has been installed on your machine it is time to deploy it. This can be done using the main.yml file located in the tasks directory of the role. It can be deployed by navigating to the tasks directory and using the following command::

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

N/A.

Dependencies
------------

N/A.

Example Playbook
----------------

TBD

License
-------

Apache

Author Information
------------------

* Gregor von Laszewski (laszewski@gmail.com) (Contact)
* Hagen Hodkins
