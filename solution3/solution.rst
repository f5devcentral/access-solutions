Solution:  SAML SP (Okta IDP)
=================================

This solution documents all the necessary pieces required to create a basic SAML SP integrated with Okta

Keywords: saml, sp, okta

DC: single, multi


URL
----

.. note:: 
   The link below only works from the UDF blueprint
   
https://sp.acme.com

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
------------------------

solution3-create.postman_collection.json_

.. _solution3-create.postman_collection.json: https://raw.githubusercontent.com/f5devcentral/access-solutions/master/solution3/postman/solution3-create.postman_collection.json

solution3-delete.postman_collection.json_

.. _solution3-delete.postman_collection.json: https://raw.githubusercontent.com/f5devcentral/access-solutions/master/solution3/postman/solution3-delete.postman_collection.json

UDF Deployment Models
-----------------------

+----------------+-------------------+
|BIG-IP Version  | Blueprint Version |
+================+===================+
|  15.1          |   5               | 
+----------------+-------------------+



BIG-IP Components used:
---------------------------

- Virtual Server

  * HTTP Profile
  * Client-side SSL Profile
  * Access Profile(s)

    - SP Service
    - IDP Connector
