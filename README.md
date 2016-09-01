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
    10. latex
    11. dependencies
    

Instructions
------------

First we assume you have started a vanilla ubuntu xenial (16.04) desktop release.

Next, you need to download the bootstrapping script:

    $ wget https://raw.githubusercontent.com/cloudmesh/ansible-cloudmesh-ubuntu-xenial/master/bootstrap.sh
  
Finally, execute the bootstrapping script:

    $ bash bootstrap.sh
   

Testing
-------


If you want to test using the development branch:

1. download `https://raw.githubusercontent.com/cloudmesh/ansible-cloudmesh-ubuntu-xenial/dev/bootstrap.sh`
1. Set `TESTING=true` before running, eg:

    $ TESTING=true bash bootstrap.sh



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
