Solution16: SAML SP to Kerberos SSO with AzureAD IDP
======================================================================================
.. _solution16:
This solution documents all the necessary pieces required to demonstrate IDP Chaining


URL
----

.. note::
   The link below only works from the UDF blueprint

- https://sp.acme.com



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

solution16-create.postman_collection.json_

.. _solution16-create.postman_collection.json: https://raw.githubusercontent.com/f5devcentral/access-solutions/master/solution16/postman/solution16-create.postman_collection.json

solution16-delete.postman_collection.json_

.. _solution16-delete.postman_collection.json: https://raw.githubusercontent.com/f5devcentral/access-solutions/master/solution16/postman/solution16-delete.postman_collection.json


UDF Deployment Models
-----------------------

+----------------+-------------------+
|BIG-IP Version  | Blueprint Version |
+================+===================+
|  16.0          |   12              |
+----------------+-------------------+
|  15.1          |    1              |
+----------------+-------------------+

BIG-IP Components used:
-------------------------

Read more about the individual components by clicking on the below links

- Virtual Server

  * HTTP Profile
  * Client-side SSL Profile
  * Access Profile
  * Per-Session Policy

    - SP Service
    - IdP Connector


Keywords: SAML, PSP, Azure

DC: single
