

Solution4:  SAML IDP (AD Auth)
=====================================

This solution documents all the necessary pieces required to create an AD Authenticated SAML IDP.  This solution is designed to be integrated with additional solutions in the UDF  deployment that require an BIGIP IDP.

Keywords: SAML, IDP, AD

DC: single, multi

:ref:`SAML IDP(AD AUTH) solution4`

URL
----

.. note:: 
   The link below only works from the UDF blueprint

https://idp.acme.com

Integrated Solutions
----------------------

.. solution4:

Policies
----------

.. toctree::
   :maxdepth: 1
   :glob:

   guide/guide.rst



Configuration Comments
------------------------
|
|


Postman Collection(s)
-----------------------

solution4-create.postman_collection.json_

.. _solution4-create.postman_collection.json: https://raw.githubusercontent.com/f5devcentral/access-solutions/master/solution4/postman/solution4-create.postman_collection.json

solution4-delete.postman_collection.json_

.. _solution4-delete.postman_collection.json: https://raw.githubusercontent.com/f5devcentral/access-solutions/master/solution4/postman/solution4-delete.postman_collection.json

UDF Deployment Models
-----------------------

+----------------+-------------------+
|BIG-IP Version  | Blueprint Version |
+================+===================+
|  15.1          |   5               | 
+----------------+-------------------+

BIG-IP Components used
--------------------------

- Virtual Server

  * HTTP Profile
  * Client-side SSL Profile
  * Access Profile

    - AAA AD Server
    - IDP Service
    - SP Connector
