Solution:  SAML SP (BIG-IP IDP)
======================================================================================

This solution documents all the necessary pieces required to create a SAML SP

Keywords: SAML, SP, AD

DC: single, multi

URL
----

https://sp.acme.com

Objective:
----------

-  Gain an basic understanding of BIG-IP as a SAML SP

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
-----------------------

solution5-create.postman_collection.json_

.. _solution5-create.postman_collection.json: https://raw.githubusercontent.com/f5devcentral/access-solutions/master/docs/solution5/postman/solution5-create.postman_collection.json

solution5-delete.postman_collection.json_

.. _solution5-delete.postman_collection.json: https://raw.githubusercontent.com/f5devcentral/access-solutions/master/docs/solution5/postman/solution5-delete.postman_collection.json




BIG-IP Versions Tested
--------------------------

- 15.1

BIG-IP Components used:
---------------------------

- Virtual Server

  * HTTP Profile
  * Client-side SSL Profile
  * Access Profile

    - SP Service
    - IDP Connector
