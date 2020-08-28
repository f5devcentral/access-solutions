Solution:  SAML IDP (AD Auth)
=================================

This solution documents all the necessary pieces required to create an AD Authenticated SAML IDP.  This solution is designed to be integrated with additional solutions in the UDF  deployment that require an BIGIP IDP.  

Keywords: SAML, IDP, AD

DC: single, multi


URL
----

https://idp.acme.com


Objective:
----------

-  Gain an basic understanding of BIG-IP as a SAML IDP

.. toctree::
   :maxdepth: 1
   :caption: Content:
   :glob:
  
   guide/guide.rst



Configuration Comments
------------------------

Access Blueprint Revision
---------------------------
  - 4

Postman Collection(s)
-----------------------
  - solution4-create.postman_collection.json
  - solution4-delete.postman_collection.json


BIG-IP Versions Tested
-------------------------
  - 15.1

BIG-IP Components used:
-----------------

* Virtual Server
 - HTTP Profile 
 - Client-side SSL Profile 
 - Access Profile
   + AAA AD Server  
   + IDP Service
   + SP Connector







   

