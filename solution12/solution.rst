Solution: RDP Gateway - AD Auth 
======================================================================================

This solution documents all the necessary pieces required to create an APM policy that prompts the user for their certificate then performs kerberos SSO to an application.  

Keywords: rdp, ad, password

DC: single, multi


URL
----
https://solution12.acme.com

Objective:
----------

-  Gain a basic understanding of RDP gateway policies

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
------------------------
  - solution12-create.postman_collection.json
  - solution12-delete.postman_collection.json


BIG-IP Versions Tested
---------------------------
  - 15.1

BIG-IP Components used:
-------------------------

* Virtual Server
 - HTTP Profile -https://support.f5.com/csp/article/K4707
 - Client-side SSL Profile -https://support.f5.com/csp/article/K14783
 - Server-side SSL Profile
 - Connectivity Profile
 - VDI Profile
 - Access Profile
      + AD AAA Object
      + Webtop
      + RDP Resource
      + RDG Profile






   

