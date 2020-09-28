Solution: API Protection (RSA Keys)
======================================================================================
.. solution13:
This solution documents all the necessary pieces required to create an OAuth Protected API protection profile



URL
----

https://solution13.acme.com

UDF Integrated Solutions
-------------------------

:ref:`Solution 10: OIDC AS/IDP using RSA keys (IDP AUTH) <solution10>`

Policies:
----------


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

**5**

Postman Collection(s)
------------------------

solution13-create.postman_collection.json_

.. _solution13-create.postman_collection.json: https://raw.githubusercontent.com/f5devcentral/access-solutions/master/docs/solution13/postman/solution13-create.postman_collection.json

solution13-delete.postman_collection.json_

.. _solution13-delete.postman_collection.json: https://raw.githubusercontent.com/f5devcentral/access-solutions/master/docs/solution13/postman/solution13-delete.postman_collection.json


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
  * API Protection Profile

    - OAuth Provider List
    - OAuth Provider
	
	
Keywords: api, oauth, prp

DC: single, multi
