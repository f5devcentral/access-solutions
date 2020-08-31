Solution:  Inline SAML with Kerberos sideband
======================================================================================

This solution documents all the necessary pieces required to create a set of APM policies that updates the AD lastlogontimestamp when only using SAML.

Keywords: saml, kerberos, ad, active, directory, idp, sp, chaining, inline

DC: single, multi


URL
----
https://sp.acme.com

Objective:
----------

-  Gain an basic understanding of BIG-IP as a SAML IDP and SAML SP

-  Gain an understanding of sideband request

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
----------------------------

**4**

Postman Collection(s)
-----------------------

solution7-create.postman_collection.json_

.. _solution7-create.postman_collection.json: https://raw.githubusercontent.com/f5devcentral/access-solutions/master/docs/solution7/postman/solution7-create.postman_collection.json

solution7-delete.postman_collection.json_

.. _solution7-delete.postman_collection.json: https://raw.githubusercontent.com/f5devcentral/access-solutions/master/docs/solution7/postman/solution7-delete.postman_collection.json


APM Profile(s)
----------------

profile_Common_receive-sideband-psp.conf.tar_

.. _profile_Common_receive-sideband-psp.conf.tar: https://github.com/f5devcentral/access-solutions/tree/master/docs/solution7/policies/

profile_Common_send-sideband-psp.conf.tar_

.. _profile_Common_send-sideband-psp.conf.tar: https://github.com/f5devcentral/access-solutions/tree/master/docs/solution7/policies/

Metadata
----------

bigip-idp.xml_

.. _bigip-idp.xml: https://github.com/f5devcentral/access-solutions/tree/master/docs/solution7/metadata

bigip-sp.xml_

.. _bigip-sp.xml: https://github.com/f5devcentral/access-solutions/tree/master/docs/solution7/metadata

okta-idp.xml_

.. _okta-idp.xml: https://github.com/f5devcentral/access-solutions/tree/master/docs/solution7/metadata

simplesaml-sp.xml_

.. _simplesaml-sp.xml: https://github.com/f5devcentral/access-solutions/tree/master/docs/solution7/metadata

iRules
-------

receive-sideband.irule_

.. _receive-sideband.irule: https://github.com/f5devcentral/access-solutions/tree/master/docs/solution7/irules

send-sideband.irule_

.. _send-sideband.irule: https://github.com/f5devcentral/access-solutions/tree/master/docs/solution7/irules


BIG-IP Versions Tested
------------------------
- 15.1

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
