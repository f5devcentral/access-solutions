Solution2: Portal Rewrite & VPN (AD Auth)
=============================================================

This solution documents all the necessary pieces required to setup a AD authenticated Portal and VPN

Keywords: portal, vpn, ad, active, directory, rewrite

DC: single, multi

URL
----

.. note:: 
   The link below only works from the UDF blueprint

https://solution2.acme.com

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
----------------------------

solution2-create.postman_collection.json_

.. _solution2-create.postman_collection.json: https://raw.githubusercontent.com/f5devcentral/access-solutions/master/solution2/postman/solution2-create.postman_collection.json

solution2-delete.postman_collection.json_

.. _solution2-delete.postman_collection.json: https://raw.githubusercontent.com/f5devcentral/access-solutions/master/solution2/postman/solution2-delete.postman_collection.json


APM Profile(s)
-------------------

profile_Common_solution2-psp.conf.tar_

.. _profile_Common_solution2-psp.conf.tar: https://github.com/f5devcentral/access-solutions/tree/master/solution2/policies/


UDF Deployment Models
-----------------------

+----------------+-------------------+
|BIG-IP Version  | Blueprint Version |
+================+===================+
|  15.1          |   5               | 
+----------------+-------------------+


BIG-IP Components used
-----------------------------

- Virtual Server

  * HTTP Profile
  * Client-side SSL Profile
  * Connectivity profile
  * Rewrite profile
  * Access Profile

    - Active Directory AAA Object
    - Network Access Resource
    - IPv4 Lease Pool
    - Webtop
    - Webtop Sections
    - Portal Resource
