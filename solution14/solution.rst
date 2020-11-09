Solution14: Per-Request Policy using Azure AD SAML IdP
======================================================================================
.. _solution14:
This solution documents all the necessary pieces required to create a Per-Request Policy configured for SAML authentication of two applications


URL
----

.. note:: 
   The link below only works from the UDF blueprint
 
- https://sp.amce.com 
- https://sp1.amce.com



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

solution14-create.postman_collection.json_

.. _solution14-create.postman_collection.json: https://raw.githubusercontent.com/f5devcentral/access-solutions/master/solution14/postman/solution14-create.postman_collection.json

solution14-delete.postman_collection.json_

.. _solution14-delete.postman_collection.json: https://raw.githubusercontent.com/f5devcentral/access-solutions/master/solution14/postman/solution14-delete.postman_collection.json


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


Keywords: SAML, PRP, Azure

DC: single, multi


