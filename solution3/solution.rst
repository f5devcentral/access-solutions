Solution:  SAML SP (Okta IDP)
=================================

This solution documents all the necessary pieces required to create a basic SAML SP integrated with Okta

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



Configuration Comments
------------------------
|
|

Access Blueprint Revision
---------------------------

**4**

Postman Collection(s)
------------------------

solution3-create.postman_collection.json_

.. _solution3-create.postman_collection.json: https://raw.githubusercontent.com/f5devcentral/access-solutions/master/docs/solution3/postman/solution3-create.postman_collection.json

solution3-delete.postman_collection.json_

.. _solution3-delete.postman_collection.json: https://raw.githubusercontent.com/f5devcentral/access-solutions/master/docs/solution3/postman/solution3-delete.postman_collection.json



BIG-IP Versions Tested
--------------------------

- 15.1

BIG-IP Components used:
---------------------------

- Virtual Server

  * HTTP Profile
  * Client-side SSL Profile
  * Access Profile(s)

    - SP Service
    - IDP Connector
