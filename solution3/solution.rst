Solution:  Inline SAML with Kerberos sideband
======================================================================================

This solution documents all the necessary pieces required to create a basic SAML SP integrated with OKta

Keywords: saml, sp, okta

DC: single, multi


URL
----
https://sp.acme.com

Objective:
----------

-  Gain an basic understanding of BIG-IP as an SAML SP


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
  - 4

Postman Collection(s)
^^^^^^^^^^^^^^^^^^^^
  - solution3-create.postman_collection.json
  - solution3-delete.postman_collection.json



BIG-IP Versions Tested
^^^^^^^^^^^^^^^^^^^^^^
  - 15.1

BIG-IP Components used:
-----------------

* Virtual Server
 - HTTP Profile -https://support.f5.com/csp/article/K4707
 - Client-side SSL Profile -https://support.f5.com/csp/article/K14783
 - Access Profile(s)
      + SAML SP
      + SAML IDP






   

