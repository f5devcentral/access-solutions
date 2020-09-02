


Solution5:  SAML SP (BIG-IP IDP)
==================================

This solution documents all the necessary pieces required to create a SAML SP

Keywords: SAML, SP, AD

DC: single, multi

:ref:`SAML SP solution5`

URL
----

.. note:: 
   The link below only works from the UDF blueprint

https://sp.acme.com


UDF Integrated solutions
-------------------------

.. solution4:


 


Policies:
----------

.. toctree::
   :maxdepth: 1
   :glob:

   guide/guide.rst




Configuration Comments
------------------------
This solution cannot be deployed at the same time as solution 3 or solution 7



Postman Collection(s)
-----------------------

solution5-create.postman_collection.json_

.. _solution5-create.postman_collection.json: https://raw.githubusercontent.com/f5devcentral/access-solutions/master/solution5/postman/solution5-create.postman_collection.json

solution5-delete.postman_collection.json_

.. _solution5-delete.postman_collection.json: https://raw.githubusercontent.com/f5devcentral/access-solutions/master/solution5/postman/solution5-delete.postman_collection.json


UDF Deployment Models
-----------------------

+----------------+-------------------+
|BIG-IP Version  | Blueprint Version |
+================+===================+
|  15.1          |   5               | 
+----------------+-------------------+



BIG-IP Components used
---------------------------

- Virtual Server

  * HTTP Profile
  * Client-side SSL Profile
  * Access Profile

    - SP Service
    - IDP Connector
