Solution6: LTM & APM - Client Certificate to Single Domain kerberos SSO
======================================================================================
.. _solution6:
This solution documents all the necessary pieces required to create an APM policy that prompts the user for their certificate then performs kerberos SSO to an application.

Keywords: certificate, ad, active, directory, kerberos, sso

DC: single, multi


URL
----

.. note:: 
   The link below only works from the UDF blueprint

https://solution6.acme.com



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

solution6-create.postman_collection.json_

.. _solution6-create.postman_collection.json: https://raw.githubusercontent.com/f5devcentral/access-solutions/master/solution6/postman/solution6-create.postman_collection.json

solution6-delete.postman_collection.json_

.. _solution6-delete.postman_collection.json: https://raw.githubusercontent.com/f5devcentral/access-solutions/master/solution6/postman/solution6-delete.postman_collection.json


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

    - AAA LDAP AAA Servers
    - AAA OCSP Responder Servers
    - Kerberos SSO
