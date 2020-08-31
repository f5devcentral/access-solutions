Solution:  JWT RS using preshared key (BIG-IP AS)
===============================================================

This solution documents all the necessary pieces required to create a basic JWT Resource Server

Keywords: JWT, OAUTH, OIDC

DC: single, multi


URL
----

https://api.acme.com

Objective:
----------

-  Gain an basic understanding of BIG-IP as JWT Resource Server

.. toctree::
   :maxdepth: 1
   :caption: Content:
   :glob:

   guide/guide.rst



Configuration Comments
------------------------
|
|

Access Blueprint Revision
----------------------------

**4**

Postman Collection(s)
-------------------------

solution9-create.postman_collection.json_

.. _solution9-create.postman_collection.json: https://raw.githubusercontent.com/f5devcentral/access-solutions/master/docs/solution9/postman/solution9-create.postman_collection.json

solution9-delete.postman_collection.json_

.. _solution9-delete.postman_collection.json: https://raw.githubusercontent.com/f5devcentral/access-solutions/master/docs/solution9/postman/solution9-delete.postman_collection.json



BIG-IP Versions Tested
--------------------------

- 15.1

BIG-IP Components used:
--------------------------

- Virtual Server

  * HTTP Profile
  * Client-side SSL Profile
  * Access Profile

    - Oauth Server
