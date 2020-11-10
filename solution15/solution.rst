Solution15: IdP Chaining to AzureAD using Per-Request Policy
======================================================================================
.. _solution15:
This solution documents all the necessary pieces required to demonstrate IDP Chaining


URL
----

.. note::
   The link below only works from the UDF blueprint

- https://portal.acme.com
- https://sp.acme.com
- https://sp1.acme.com



policies
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

solution15-create.postman_collection.json_

.. _solution15-create.postman_collection.json: https://raw.githubusercontent.com/f5devcentral/access-solutions/master/solution15/postman/solution15-create.postman_collection.json

solution15-delete.postman_collection.json_

.. _solution15-delete.postman_collection.json: https://raw.githubusercontent.com/f5devcentral/access-solutions/master/solution15/postman/solution15-delete.postman_collection.json


UDF Deployment Models
-----------------------

+----------------+-------------------+
|BIG-IP Version  | Blueprint Version |
+================+===================+
|  16.0          |   7               |
+----------------+-------------------+


BIG-IP Components used:
-------------------------

Read more about the individual components by clicking on the below links

- Virtual Server

  * HTTP Profile
  * Client-side SSL Profile
  * Server-side SSL Profile
  * Access Profile
  * Per-Session Policy
  * Per-Request Policy

    - SP Service
    - IdP Connector
    - IdP Service
    - SP Connector


Keywords: SAML, PRP, Azure

DC: single, multi
