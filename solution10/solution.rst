Solution10:  OIDC IdP/AS using public keys  (AD Auth)
===============================================================
.. _solution10:
This solution documents all the necessary pieces required to create a basic OIDC IDP




URL
----

.. note:: 
   The link below only works from the UDF blueprint

https://as.acme.com



UDF Integrated Solutions
-------------------------

:ref:`Solution 11: OIDC RP/RS using Public Keys (BIG-IP IDP/AS) <solution11>`


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

solution10-create.postman_collection.json_

.. _solution10-create.postman_collection.json: https://raw.githubusercontent.com/f5devcentral/access-solutions/master/solution10/postman/solution10-create.postman_collection.json

solution10-delete.postman_collection.json_

.. _solution10-delete.postman_collection.json: https://raw.githubusercontent.com/f5devcentral/access-solutions/master/solution10/postman/solution10-delete.postman_collection.json


UDF Deployment Models
-----------------------

+----------------+-------------------+
|BIG-IP Version  | Blueprint Version |
+================+===================+
|  15.1          |   5               | 
+----------------+-------------------+


BIG-IP Components used:
-------------------------

- Virtual Server

  * HTTP Profile
  * Client-side SSL Profile
  * Access Profile

    - AD Server
    - OAuth Profile
	- JWK
	
Keywords: JWT, OAUTH, OIDC, RSA, IDP

DC: single, multi
