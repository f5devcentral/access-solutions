Solution11:  OIDC Client using Public Keys (BIG-IP IdP)
===============================================================
.. _solution11:
This solution documents all the necessary pieces required to create a basic OIDC Client


URL
----

.. note:: 
   The link below only works from the UDF blueprint

https://solution11.acme.com

UDF Integrated Solutions
-------------------------

:ref:`Solution 10: OIDC AS/IdP using RSA keys (IDP AUTH) <solution10>`

policies
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
-------------------------

solution11-create.postman_collection.json_

.. _solution11-create.postman_collection.json: https://raw.githubusercontent.com/f5devcentral/access-solutions/master/solution11/postman/solution11-create.postman_collection.json

solution11-delete.postman_collection.json_

.. _solution11-delete.postman_collection.json: https://raw.githubusercontent.com/f5devcentral/access-solutions/master/solution11/postman/solution11-delete.postman_collection.json


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

    - OAuth Server


Keywords: JWT, OAUTH, OIDC, RS

DC: single, multi