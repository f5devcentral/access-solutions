
Solution14 Policy
======================


Policy Walk-Through
-------------------------------------

This soultion requires creation of two access policies, a default allow per-session and a per-request policy augmented by X number of subroutines.

|image001|

#.  This initial access policy (default allow) is a per-session policy to populate required session variable name and values.
		- This will be used to facilate the SAML-SP discovery of the apporaite SAML-IdP. 

|image002|

This "per-request policy is the scaffolding to build service call to one or more authentication authorization services.

|image003|

#.  This URL Branching action is used to interrogate the service URL and vector it to the difference SAML-SP pools.

|image004|

#.  From the sp.acme.com success action branch configure the sp subroutine 
		- Authentication to application pools requiring rewrite services

|image005|

#.  Under the properties tab configure the SAML Authentication SP AAA Server URL

|image006|

#.  Under the Branch Rule tab ensure Insert Before: is set to Successful.

|image007|

#.	From the sp1.acme.com success action branch configure the sp1 subroutine 
		- Authentication to application pools requiring rewrite services.

|image008|

#.	Under the Branch Rule tab ensure Insert Before: is set to Successful.

From the sp Success branch add an assignment action for each of the SAML-SP pools. Under the properties add the appropriate SAML-SP pool.

|image009|

#.	Under the properties tab configure the SAML Authentication SP1 AAA Server URL for sp_pool. 

|image010|

#.	Under the branch rule tab add a fallback branch to an allow ending.

|image011|

#.	Under the properties tab configure the SAML Authentication SP1 AAA Server URL for sp1_pool. 

|image012|

#.	Under the branch rule tab add a fallback branch to an allow ending.


Federated SAML-SP Settings Configuration
------------------------------------------

|image013|

Create local SAML Service Provider objects for each of the SAML-IdP to be discovered. 
	- The SAML-SP object or objects settings are will be bound to a unigue IdP URL.

|image014|

For sp.acme.com under the general settings define:

#.	The service Name, 
#.	Entity ID
#.	Host URL.

|image015|

Under Endpoint Settings set Assertion Consumer Service Binding:

#. POST

|image016|

Select want signed assertion under Secirity Settings Authentication and Encryption Settings

#.	Want Signed Assertion

|image017|

For Authentication Context set Comparison Method and Authentication Context Classes

#.	Exact
#.	None

|image018|

Requested Attributes left at default.

|image019|

Select Allow Name-Identifier Creation.

Click OK.

|image020|

For sp1.acme.com under the general settings define:

#.	The service Name, 
#.	Entity ID
#.	Host URL.

|image021|

Under Endpoint Settings set Assertion Consumer Service Binding:

#. POST

|image022|

Select want signed assertion under Secirity Settings Authentication and Encryption Settings

#.	Want Signed Assertion

|image023|

For Authentication Context set Comparison Method and Authentication Context Classes

#.	Exact
#.	None

|image024|

Requested Attributes left at default.

|image025|

Select Allow Name-Identifier Creation.

Click OK.

|image026|

Create SAML-SP External IdP Connectors

|image027|

Configure the SAML IdP Connector

#.	Name
#.	Enter IdP entity ID

|image028|

Configure Endpoint Settings

#.	Single Sigh On Service URL
#.	Single Sign On Service Binding

|image029|

Artifact Resolution Service set to default.

|image030|

Set Assertion Settings Identity Location to Subject.

|image031|

Security Settings

#.	Select setting for Authentication Request sent by this device to IdP Singning Algorithm
#.	Set Certificate Settings IdP's Assertion Verification Certificate to specific IdP policy.

|image032|

Configure Single Logout Service Settings.

#.	Single Logout Request URL
#.	Single Logout Response URL

|image033|

Create External SP Connectors

|image034|

Edit the following General Settings 

#.	Service Provider Name
#.	Service Provider Entity ID

|image035|

Edit Endpoint Settings

#.	Add a POST binding location URL and set to default.
#.	Add a PAOS binding location URL.

|image036|

Edit Security Settings

#.	Check the Assertion must be signed.
#.	Select Signing Algorithm.

|image037|

Select Single Logout Binding from the SLO Service Settings

|image038|

Select Service Provider Location: External for the SP Location Settings.



User's Perspective
---------------------

|image039|

The user accessing https://sp.acme.com or https://sp1.acme.com is directed to a SAML Logon Page.

|image040|

The users authentication assertion directed from the SAML-SP to the appropriate SAML-IdP for authorization. 

|image041|

Once the user is authenticated they are transparently redirected to the service asset.



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
.. |image001| image:: media/017.png
.. |image002| image:: media/018.png
.. |image003| image:: media/019.png
.. |image004| image:: media/020.png
.. |image005| image:: media/021.png
.. |image006| image:: media/022.png
.. |image007| image:: media/023.png
.. |image008| image:: media/024.png
.. |image009| image:: media/025.png
.. |image010| image:: media/026.png
.. |image011| image:: media/027.png
.. |image012| image:: media/028.png
.. |image013| image:: media/029.png
.. |image014| image:: media/030.png
.. |image015| image:: media/031.png
.. |image016| image:: media/032.png
.. |image001| image:: media/033.png
.. |image002| image:: media/034.png
.. |image003| image:: media/035.png
.. |image004| image:: media/036.png
.. |image005| image:: media/037.png
.. |image006| image:: media/038.png
.. |image007| image:: media/039.png
.. |image008| image:: media/040.png
.. |image009| image:: media/041.png
