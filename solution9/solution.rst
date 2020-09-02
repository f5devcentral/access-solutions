Solution9:  JWT RS using preshared key (BIG-IP AS)
===============================================================

This solution documents all the necessary pieces required to create a basic JWT Resource Server

Keywords: JWT, OAUTH, OIDC

DC: single, multi


URL
----

.. note:: 
   The link below only works from the UDF blueprint

https://solution9.acme.com


UDF Integrated solutions
-------------------------



Policies
----------

.. toctree::
   :maxdepth: 1
   :caption: Content:
   :glob:

   guide/guide.rst



Configuration Comments
------------------------
|
|


Postman Collection(s)
-------------------------

solution9-create.postman_collection.json_

.. _solution9-create.postman_collection.json: https://raw.githubusercontent.com/f5devcentral/access-solutions/master/solution9/postman/solution9-create.postman_collection.json

solution9-delete.postman_collection.json_

.. _solution9-delete.postman_collection.json: https://raw.githubusercontent.com/f5devcentral/access-solutions/master/solution9/postman/solution9-delete.postman_collection.json


UDF Deployment Models
-----------------------

+----------------+-------------------+
|BIG-IP Version  | Blueprint Version |
+================+===================+
|  15.1          |   5               | 
+----------------+-------------------+

BIG-IP Components used:
--------------------------

- Virtual Server

  * HTTP Profile
  * Client-side SSL Profile
  * Access Profile

    - Oauth Server
