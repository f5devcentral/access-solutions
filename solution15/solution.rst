Solution15: Per-Request Policy using Internal Federated and Azure AD SAML IdP
======================================================================================
.. _solution15:
This solution documents all the necessary pieces required to create a Per-Request Access and Federation Policies

Keywords: SAML, PRP, Azure

DC: single, multi


URL
----

.. note::
   The link below only works from the UDF blueprint

https://sp.amce.com
https://sp1.amce.com



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
  * Per-Request Policy

    - SP Service
	- IdP Connector
