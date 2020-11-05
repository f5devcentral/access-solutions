Solution8:  JWT AS using preshared keys  (AD Auth)
==================================================================
.. _solution8:
This solution documents all the necessary pieces required to create a basic JWT Authorization Server


URL
----

.. note:: 
   The link below only works from the UDF blueprint

https://as.acme.com


UDF Integrated solutions
-------------------------

:ref:`Solution 9: JWT RS using Preshared Keys  <solution9>`

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
----------------------

solution8-create.postman_collection.json_

.. _solution8-create.postman_collection.json: https://raw.githubusercontent.com/f5devcentral/access-solutions/master/solution8/postman/solution8-create.postman_collection.json

solution8-delete.postman_collection.json_

.. _solution8-delete.postman_collection.json: https://raw.githubusercontent.com/f5devcentral/access-solutions/master/solution8/postman/solution8-delete.postman_collection.json


UDF Deployment Models
-----------------------

+----------------+-------------------+
|BIG-IP Version  | Blueprint Version |
+================+===================+
|  15.1          |   5               | 
+----------------+-------------------+

BIG-IP Components used
-------------------------

- Virtual Server

  * HTTP Profile
  * Client-side SSL Profile
  * Access Profile

    - AAA AD
    - Oauth Profile
	- JWK

Keywords: JWT, OAUTH, OIDC

DC: single, multi
