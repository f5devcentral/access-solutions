Solution:  JWT Resource Server (BIGIP-AS with preshared keys)
===============================================================

This solution documents all the necessary pieces required to create a basic JWT Resecource Server

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
   postman/postman.rst


Configuration Comments
------------------------

Access Blueprint Revision
^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  - 3

Postman Collection(s)
^^^^^^^^^^^^^^^^^^^^
  - solution9-create.postman_collection.json
  - solution9-delete.postman_collection.json



BIG-IP Versions Tested
^^^^^^^^^^^^^^^^^^^^^^
  - 15.1

BIG-IP Components used:
-----------------

* Virtual Server
 - HTTP Profile -https://support.f5.com/csp/article/K4707
 - Client-side SSL Profile -https://support.f5.com/csp/article/K14783






   

