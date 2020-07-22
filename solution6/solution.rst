Solution: LTM+APM - Client Certificate to Single Domain kerberos SSO 
======================================================================================

This solution documents all the necessary pieces required to create an APM policy that prompts the user for their certificate then performs kerberos SSO to an application.  

Keywords: certificate, ad, active, directory, kerberos, sso

DC: single, multi

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
   postman/postman.rst


Configuration Comments
------------------------

Access Blueprint Revision
^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  - 41

Postman Collection(s)
^^^^^^^^^^^^^^^^^^^^
  - solution6-create.postman_collection.json
  - solution6-delete.postman_collection.json


APM Profile(s) 
^^^^^^^^^^^^
  - profile_Common_solution6-psp.conf.tar


BIG-IP Versions Tested
^^^^^^^^^^^^^^^^^^^^^^
  - 15.1

BIG-IP Components used:
-----------------

* Virtual Server
 - HTTP Profile -https://support.f5.com/csp/article/K4707
 - Client-side SSL Profile -https://support.f5.com/csp/article/K14783
 - Access Profile
      + LDAP AAA Object
      + OCSP Responder AAA Object
	  + Kerberos SSO





   

