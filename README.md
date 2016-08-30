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
    

Instructions
------------

First we assume you have started a vanilla ubuntu xenial desktop release. The version number is 16.??

Next you login into it and install pip if you have not yet done so with:

    $ sudo apt install python-pip -y
  
Next you install ansible with

    $ sudo apt-get install ansible -y
   
Next you install the role with

    $ ansible-galaxy install cloudmesh.ansible-cloudmesh-ubuntu-xenial

NOT COMPLETED
-------------



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
