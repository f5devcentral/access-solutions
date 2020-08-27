Solution:  JWT AS (preshared keys) - AD Auth 
==================================================================

This solution documents all the necessary pieces required to create a basic JWT Authorization Server


Keywords: JWT, OAUTH, OIDC

DC: single, multi


URL
----

https://as.acme.com

Objective:
----------

-  Gain an basic understanding of BIG-IP as JWT Authorization Server

.. toctree::
   :maxdepth: 1
   :caption: Content:
   :glob:
  
   guide/guide.rst
 -


Configuration Comments
------------------------

Access Blueprint Revision
---------------------------
  - 4

Postman Collection(s)
----------------------

  - solution8-create.postman_collection.json
  - solution8-delete.postman_collection.json


Access Policies
-----------------

profile_Common_solution8-psp.conf.tar


BIG-IP Versions Tested
^^^^^^^^^^^^^^^^^^^^^^
  - 15.1

BIG-IP Components used:
-----------------

* Virtual Server
 - HTTP Profile -
 - Client-side SSL Profile 
 - Access Profile
    + AAA AD 
    + Oauth Profile






   

