Solution8 Policy
======================================================


Policy Walk-Through
----------------------

|image001|

#.  In this policy a user enters their credentials in the logon page agent.

    - Those credentials are collected, stored as the default system session variables of session.logon.last.username and session.logon.last.password.

#.  The AD Auth Agent validates the the username and password session variables against the configured AD Domain Controller.
#.  If AD Auth is successful, an AD Query is performed to retrieve additional AD Attributes
#.  If AD Query is successful, an OAuth Authorization is performed granting the user access to a token.
#.  The user is granted access via the Allow Terminal
#.  If unsuccessful, the user proceeds down the fallback branch and denied access via the Deny Terminal
#.  If unsuccessful, the user proceeds down the fallback branch and denied access via the Deny Terminal
#.  If unsuccessful, the user proceeds down the fallback branch and denied access via the Deny Terminal



Policy Agent Configuration
----------------------------

The Logon Page contains only the default setting

|image002|

The AD Auth Agent uses a defined the  AD AAA Servers that user will be authenticated against.  All Setting are the default.

|image003|

The AD Query Agent uses a defined the  AD Servers that user will be for queries against.  Additional Attributes we added.

|image004|

The OAuth Authorization Agent is used to define the Audience and Scope.  All Setting are the default.

|image005|



Profile Settings
-------------------

The Oauth Profile used for issuing the JWT token is assigned under the Configuration section.

|image006|



Supporting APM Objects
-----------------------


OAuth Profile
^^^^^^^^^^^^^^

The settings below define all the components of the OAuth Profile

|image007|



JWT Key
^^^^^^^^^^^^^^^^

|image008|


AAA AD Servers
^^^^^^^^^^^^^^

|image009|



The Policy from a user's perspective
-------------------------------------

If the user attempts to access https://as.acme.com they will be redirected to a logon page.  This solution is designed to be integrated with other solutions in the UDF deployment that require an Authorization Server.




|image010|



.. |image001| image:: media/001.png
.. |image002| image:: media/002.png
.. |image003| image:: media/003.png
.. |image004| image:: media/004.png
.. |image005| image:: media/005.png
.. |image006| image:: media/006.png
.. |image007| image:: media/007.png
.. |image008| image:: media/008.png
.. |image009| image:: media/009.png
.. |image010| image:: media/010.png
.. |image011| image:: media/011.png
.. |image012| image:: media/012.png
.. |image013| image:: media/013.png
.. |image014| image:: media/014.png
.. |image015| image:: media/015.png
