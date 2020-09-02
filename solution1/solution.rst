Solution: VPN (AD Auth)
=======================

This solution documents  all the necessary pieces required to setup a basic AD authenticated VPN.

Keywords: vpn, ad, active, directory

DC: single, multi

URL
----

.. note:: 
   The link below only works from the UDF blueprint

https://solution1.acme.com


Policies
----------

.. toctree::
   :maxdepth: 1
   :glob:

   guide/guide.rst

Configuration Comments
------------------------

|
|



Postman Collection(s)
-----------------------

solution1-create.postman_collection.json_

.. _solution1-create.postman_collection.json: https://raw.githubusercontent.com/f5devcentral/access-solutions/master/solution1/postman/solution1-create.postman_collection.json

solution1-delete.postman_collection.json_

.. _solution1-delete.postman_collection.json: https://raw.githubusercontent.com/f5devcentral/access-solutions/master/solution1/postman/solution1-delete.postman_collection.json


APM Profile(s)
----------------

profile_Common_solution1-psp.conf.tar_

.. _profile_Common_solution1-psp.conf.tar: https://github.com/f5devcentral/access-solutions/tree/master/solution1/policies/


UDF Deployment Models
-----------------------

+----------------+-------------------+
|BIG-IP Version  | Blueprint Version |
+================+===================+
|  15.1          |   5               | 
+----------------+-------------------+


BIG-IP Components
------------------

- Virtual Server

  * HTTP Profile
  * Client-side SSL Profile
  * Connectivity profile
  * Access Profile

    - AAA Active Directory Object
    - Network Access Resource
    - IPv4 Lease Pool
    - Webtop
    - Webtop Sections
