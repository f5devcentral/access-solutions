Solution:  JWT Authorization Server(RSA keys) - AD Auth
===============================================================

This solution documents all the necessary pieces required to create a basic JWT Resource Server using RSA keys

Keywords: JWT, OAUTH, OIDC, RSA

DC: single, multi


URL
----

https://solution10.acme.com

Objective:
----------

-  Gain an basic understanding of BIG-IP as JWT Resource Server

.. toctree::
   :maxdepth: 1
   :caption: Content:
   :glob:
  
   guide/guide.rst
   postman/postman.rst


Configuration Comments
------------------------

Access Blueprint Revision
---------------------------
  - 4

Postman Collection(s)
-------------------------
  - solution10-create.postman_collection.json
  - solution10-delete.postman_collection.json



BIG-IP Versions Tested
---------------------------
  - 15.1

BIG-IP Components used:
-------------------------

* Virtual Server
 - HTTP Profile 
 - Client-side SSL Profile 
 - Access Profile
   + AD Server
   + OAuth Profile






   

