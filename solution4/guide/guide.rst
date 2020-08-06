The Policy
======================================================


Policy Walk-Through
----------------------

|image001|     

1. In this policy a user enters their credentials in the logon page agent.  
    - Those credentials are collected, stored as the default system session variables of session.logon.last.username and session.logon.last.password.                                
          
2. The AD Auth Agent validates the the username and password session variables against the configured AD Domain Controller.
3. The user is granted access via the Allow Terminal
4. If unsuccessful, the user proceeds down the fallback branch and denied access via the Deny Terminal
                                       
                                                                             

Policy Agent Configuration
----------------------------

The Logon Page contains only the default setting                                                                          

|image002|                                                                                   

The AD Auth Agent uses a defined the  AD AAA Server object that user will be authenticated against.  All Setting are the default.

|image003|                                                                                   


Profile Settings
-------------------

The SSO/Auth Domains setting was modified from its default to include the idp.acme.com SAML IDP Service

|image004|

                                                                           


Supporting APM Objects
-----------------------

AAA AD Servers
^^^^^^^^^^^^^^^^^
A single domain controller was configured for Active directory AAA authentication                         


|image005|                                                                                   



IDP Service
^^^^^^^^^^^^
                                                   
The settings below define all the components of the IDP Service

**General Settings**

|image006|

**SAML Profile**

|image007|

**Endpoint Settings**

|image008|

**Assertion Settings**

|image009|

**SAML Attributes**

|image010|

**Security Settings**

|image011|


                                                                             

SP Connector
^^^^^^^^^^^^^^^^

The settings below define all the components of the SP Service

**General Settings**

|image012|

**Endpoint Settings**
                                                             
|image013| 

**Security Settings**

|image014|

**SLO Service Settings**

|image015|

**SP Location Settings**

|image016|                                                                                  



The Policy from a user's perspective
-------------------------------------

If the user attempts to access https://idp.acme.com they will be redirected to a logon page.  This solution is designed to be integrated with the solutions in the UDF deployment that require an IDP.

 - Solution5



|image017|



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
.. |image016| image:: media/016.png
.. |image017| image:: media/017.png


   
