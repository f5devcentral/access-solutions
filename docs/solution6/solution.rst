Solution: LTM & APM - Client Certificate to Single Domain kerberos SSO
======================================================================================

This solution documents all the necessary pieces required to create an APM policy that prompts the user for their certificate then performs kerberos SSO to an application.

Keywords: certificate, ad, active, directory, kerberos, sso

DC: single, multi


URL
----
https://solution7.acme.com

Objective:
----------

-  Gain an understanding of a certificate based authentication

-  Gain an understanding of a variable assignments

-  Gain an initial understanding of kerberos SSO

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

**4**

Postman Collection(s)
-----------------------

solution6-create.postman_collection.json_

.. _solution6-create.postman_collection.json: https://raw.githubusercontent.com/f5devcentral/access-solutions/master/docs/solution6/postman/solution6-create.postman_collection.json

solution6-delete.postman_collection.json_

.. _solution6-delete.postman_collection.json: https://raw.githubusercontent.com/f5devcentral/access-solutions/master/docs/solution6/postman/solution6-delete.postman_collection.json



BIG-IP Versions Tested
------------------------

  - 15.1

BIG-IP Components used:
--------------------------

* Virtual Server
 - HTTP Profile
 - Client-side SSL Profile
 - Access Profile
      + LDAP AAA Object
      + OCSP Responder AAA Object
      + Kerberos SSO
