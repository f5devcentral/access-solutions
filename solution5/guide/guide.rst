The Policy
======================================================


Policy Walk-Through
----------------------

|image001|     

1. When a user accesses a VIP protected by this policy they are redirected to the IDP provider Selected by the SP Service.         
2. Upon successful authentication at the IDP, the IDP redirects the user back to the SP.  The SP service consumes the Assertion.  The user is granted access via the Allow Terminal 
3. If unsuccessful, the user proceeds down the fallback branch and denied access via the Deny Terminal
                                       
                                                                             

Policy Agent Configuration
----------------------------

The SAML Auth Policy Item contains the following settings                                                                         

|image014|                                                                                   

                                                                                


Profile Settings
-------------------

All profile settings are left the defaults

                                                                          

Supporting APM Objects
-----------------------

                                                                              

SP Service
^^^^^^^^^^^^
                                                   
The settings below define all the components of the SP Service

**General Settings**

|image002|


**Endpoint Settings**

|image003|

**Security Settings**

|image004|

**Authentication Context**

|image005|

**Requested Attributes**

|image006|

**Advanced Settings**

|image007|


                                                                             

IDP Connector
^^^^^^^^^^^^^^^^

The settings below define all the components of the IDP Connector

**General Settings**

|image008|

**Single Sign On Service**
                                                             
|image009| 

**Artifact Resolution Service**

|image010|

**Assertion Settings**

|image011|

**SLO Service Settings**

|image012|                                                                                  



The Policy from a user's perspective
-------------------------------------

If the user attempts to access https://sp.acme.com they will be redirected to https://idp.acme.com  This solution is designed to be integrated with IDP solutions deployed in the UDF Deployment

**Supported IDP Solutions**

 - Solution4



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


   

