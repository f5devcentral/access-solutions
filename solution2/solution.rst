Solution: Portal Rewrite & VPN (AD Auth) 
=============================================================

This solution documents all the necessary pieces required to setup a AD authenticated Portal and VPN  

Keywords: portal, vpn, ad, active, directory, rewrite

DC: single, multi

URL
----

https://solution2.acme.com

Objective:
----------

-  Gain an understanding of a basic Portal configuration

-  Gain an understanding of a basic VPN configuration

-  Gain an initial understanding of AAA Active Directory Objects

-  Gain an initial understanding of AD Queries

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
----------------------------

  - solution2-create.postman_collection.json
  - solution2-delete.postman_collection.json


APM Profile(s) 
-------------------
  - profile_Common_solution2-psp.conf.tar


BIG-IP Versions Tested
--------------------------

  - 15.1

BIG-IP Components used:
-----------------------------

* Virtual Server
 - HTTP Profile 
 - Client-side SSL Profile 
 - Connectivity profile
 - Rewrite profile
 - Access Profile
      + Active Directory AAA Object
      + Network Access Resource
      + IPv4 Lease Pool
      + Webtop
      + Webtop Sections
      + Portal Resource




   

