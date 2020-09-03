Solution7:  Inline SAML with Kerberos sideband
======================================================================================
.. _solution7:
This solution documents all the necessary pieces required to create a set of APM policies that updates the AD lastlogontimestamp when only using SAML.

Keywords: saml, kerberos, ad, active, directory, idp, sp, chaining, inline

DC: single, multi


URL
----

.. note:: 
   The link below only works from the UDF blueprint

https://sp.acme.com

Policies:
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

solution7-create.postman_collection.json_

.. _solution7-create.postman_collection.json: https://raw.githubusercontent.com/f5devcentral/access-solutions/master/solution7/postman/solution7-create.postman_collection.json

solution7-delete.postman_collection.json_

.. _solution7-delete.postman_collection.json: https://raw.githubusercontent.com/f5devcentral/access-solutions/master/solution7/postman/solution7-delete.postman_collection.json


APM Profile(s)
----------------

profile_Common_receive-sideband-psp.conf.tar_

.. _profile_Common_receive-sideband-psp.conf.tar: https://github.com/f5devcentral/access-solutions/tree/master/solution7/policies/

profile_Common_send-sideband-psp.conf.tar_

.. _profile_Common_send-sideband-psp.conf.tar: https://github.com/f5devcentral/access-solutions/tree/master/solution7/policies/

Metadata
----------

bigip-idp.xml_

.. _bigip-idp.xml: https://github.com/f5devcentral/access-solutions/tree/master/solution7/metadata

bigip-sp.xml_

.. _bigip-sp.xml: https://github.com/f5devcentral/access-solutions/tree/master/solution7/metadata

okta-idp.xml_

.. _okta-idp.xml: https://github.com/f5devcentral/access-solutions/tree/master/solution7/metadata

simplesaml-sp.xml_

.. _simplesaml-sp.xml: https://github.com/f5devcentral/access-solutions/tree/master/solution7/metadata

iRules
-------

receive-sideband.irule_

.. _receive-sideband.irule: https://github.com/f5devcentral/access-solutions/tree/master/solution7/irules

send-sideband.irule_

.. _send-sideband.irule: https://github.com/f5devcentral/access-solutions/tree/master/solution7/irules

UDF Deployment Models
-----------------------

+----------------+-------------------+
|BIG-IP Version  | Blueprint Version |
+================+===================+
|  15.1          |   5               | 
+----------------+-------------------+



BIG-IP Components used:
--------------------------


- Virtual Server

  * HTTP Profile
  * Client-side SSL Profile
  * Access Profile(s)

    - SAML SP Service
    - SAML IDP Connector
    - SAML IDP Service
    - SAML SP Connector
    - AAA Active Directory
    - Kerberos SSO
