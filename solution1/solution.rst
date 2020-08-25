Solution: VPN - AD Auth
=======================

This solution documents  all the necessary pieces required to setup a basic VPN using  Active Directory Authentication.  

Keywords: vpn, ad, active, directory

DC: single, multi

URL
----

https://solution1.acme.com


Objective:
----------

-  Gain an understanding of a basic VPN configuration

-  Gain an initial understanding of Active Directory AAA Objects

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
-----------------------
  - solution1-create.postman_collection.json
  - solution1-delete.postman_collection.json


APM Profile(s) 
^^^^^^^^^^^^
  - profile_Common_solution1-psp.conf.tar


BIG-IP Versions Tested
------------------------

  - 15.1

BIG-IP Components used:
------------------------

* Virtual Server
 - HTTP Profile -
 - Client-side SSL Profile 
 - Connectivity profile 
 - Access Profile
      + AAA Active Directory Object
      + Network Access Resource
      + IPv4 Lease Pool
      + Webtop
      + Webtop Sections




   

