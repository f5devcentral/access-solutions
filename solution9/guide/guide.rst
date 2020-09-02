Solution9 Policy
======================================================


Policy Walk-Through
----------------------

|image001|

1. When a user accesses a VIP protected by this policy JWT and scope validation is performed
2. Upon successful Authorization, the user is granted access via the Allow Terminal
3. If unsuccessful, the user proceeds down the fallback branch and denied access via the Deny Terminal



Policy Agent Configuration
----------------------------

The OAuth Scope Settings are defined as Internal.

|image002|




Profile Settings
-------------------


All profile settings are left the defaults



Supporting APM Objects
-----------------------

Provider List
^^^^^^^^^^^^^^

The provider List defines a single provider

|image003|

Provider
^^^^^^^^^

The settings below define all the components of the Authorization Server's endpoints to retrieve and validate tokens.

|image004|


JSON Web Token
^^^^^^^^^^^^^^^

The JWT setting define the signing algorithms used by a provider with a set of jwks

|image005|

JWT Key
^^^^^^^^^^^^^^^^

The key settings define a type of key and its properties

|image006|



The Policy from a user's perspective
-------------------------------------

If the user attempts to access https://solution9.acme.com via postman located on the jumpbox they set to the Authorization server first for authentication(https://solution8.acme.com). Once authenticate the Post passes the JWT to https://api.acme.com  and JSON payload is presented.

This solution is designed to be integrated with other Authorization Server based solutions.

|image007|





.. |image001| image:: media/001.png
.. |image002| image:: media/002.png
.. |image003| image:: media/003.png
.. |image004| image:: media/004.png
.. |image005| image:: media/005.png
.. |image006| image:: media/006.png
.. |image007| image:: media/007.png
