Solution:  OIDC IDP - AD Auth
===============================================================

This solution documents all the necessary pieces required to create a basic OIDC IDP

Keywords: JWT, OAUTH, OIDC, RSA, IDP

DC: single, multi


URL
----

https://solution10.acme.com

Objective:
----------

-  Gain an basic understanding of BIG-IP as OIDC IDP

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
---------------------------

**4**

Postman Collection(s)
-------------------------

solution10-create.postman_collection.json_

.. _solution10-create.postman_collection.json: https://raw.githubusercontent.com/f5devcentral/access-solutions/master/docs/solution10/postman/solution10-create.postman_collection.json

solution10-delete.postman_collection.json_

.. _solution10-delete.postman_collection.json: https://raw.githubusercontent.com/f5devcentral/access-solutions/master/docs/solution10/postman/solution10-delete.postman_collection.json

APM Profile(s)
----------------

profile_Common_solution10-psp.conf.tar_

.. _profile_Common_solution10-psp.conf.tar: https://github.com/f5devcentral/access-solutions/tree/master/docs/solution10/policies/


BIG-IP Versions Tested
---------------------------

- 15.1

BIG-IP Components used:
-------------------------

- Virtual Server

  * HTTP Profile
  * Client-side SSL Profile
  * Access Profile

    - AD Server
    - OAuth Profile
