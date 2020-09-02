Solution12: RDP Gateway (AD Auth)
======================================================================================

This solution documents all the necessary pieces required to create an APM policy for RDP Gateway functional using AD Authentication

Keywords: rdp, ad, password

DC: single, multi


URL
----

.. note:: 
   The link below only works from the UDF blueprint

https://solution12.acme.com



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

solution12-create.postman_collection.json_

.. _solution12-create.postman_collection.json: https://raw.githubusercontent.com/f5devcentral/access-solutions/master/solution12/postman/solution12-create.postman_collection.json

solution12-delete.postman_collection.json_

.. _solution12-delete.postman_collection.json: https://raw.githubusercontent.com/f5devcentral/access-solutions/master/solution12/postman/solution12-delete.postman_collection.json


UDF Deployment Models
-----------------------

+----------------+-------------------+
|BIG-IP Version  | Blueprint Version |
+================+===================+
|  15.1          |   5               | 
+----------------+-------------------+


BIG-IP Components used:
-------------------------

Read more about the individual components by clicking on the below links

- Virtual Server

  * HTTP Profile
  * Client-side SSL Profile
  * Server-side SSL Profile
  * Connectivity Profile
  * VDI Profile
  * Access Profile

    - AD AAA Object
    - Webtop
    - RDP Resource
    - RDG Profile
