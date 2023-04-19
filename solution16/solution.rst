Solution16: SAML SP with AzureAD IdP to Kerberos SSO 
==========================================================
.. _solution16:
This solution documents all the necessary pieces required to demonstrate SAML SP  with AzureAD IdP to Kerberos SSO


URL
----

.. note::
   The link below only works from UDF blueprint

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
|  15.1          |    1              |
+----------------+-------------------+

BIG-IP Components used:
-------------------------

Read more about the individual components by clicking on the below links

- Virtual Server

  * HTTP Profile
  * Client-side SSL Profile
  * Access Profile
    - Kerberos SSO
  * Per-Session Policy
    - SP Service
    - IdP Connector


Keywords: SAML, PSP, Azure, Kerberos

DC: single
