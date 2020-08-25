Solution:  OAuth client using RSA keys
===============================================================

This solution documents all the necessary pieces required to create a basic OAuth Client using RSA keys

Keywords: JWT, OAUTH, OIDC, RSA, RS

DC: single, multi


URL
----

https://solution11.acme.com

Objective:
----------

-  Gain an basic understanding of BIG-IP as OAuth Client

.. toctree::
   :maxdepth: 1
   :caption: Content:
   :glob:
  
   guide/guide.rst



Configuration Comments
------------------------

Access Blueprint Revision
----------------------------
  - 4

Postman Collection(s)
-------------------------
  - solution11-create.postman_collection.json
  - solution11-delete.postman_collection.json



BIG-IP Versions Tested
---------------------------
  - 15.1

BIG-IP Components used:
--------------------------

* Virtual Server
 - HTTP Profile 
 - Client-side SSL Profile 
 - Access Profile
    + Oauth Provider






   

