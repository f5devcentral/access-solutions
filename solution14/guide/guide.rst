Solution14 Policy
======================



Per-Session Policy Walk-Through
-------------------------------------

This solution requires creation of two access policies. A default allow per-session policy and a per-request policy using two subroutines.

|image001|

#.  This initial access policy (default allow) is a per-session policy to populate required session variable name and values.

Per-Request Policy Walk-Through
--------------------------------------
|image002|

This "per-request policy is the scaffolding to build service call to one or more authentication authorization services.

#.  This URL Branching action is used to interrogate the service URL and vector it to the appropriate SAML-SP Subroutine.
#.  When a user is directed to a SAML Auth agent they are redirected to the IDP selected by the SP Service(sp.acme.com).
#.	Upon successful authentication at the IDP, the user is redirected back to the SP. The SP service consumes the Assertion. The user is directed to the Success Terminal.
#.	Upon unsuccessful authentication, the user proceeds down the fallback branch and directed to the Fail Terminal.
#.	Pool sp.acme.com-pool is assigned to the request for load balancing. Traitional LTM load balancing rules still apply.
#.	The user is granted access via the Allow Terminal.
#.	User credentials failed the selected authentication and is directed to the Reject Terminal.
#.  When a user is directed to a SAML Auth agent they are redirected to the IDP selected by the SP Service(sp1.acme.com).
#.	Upon successful authentication at the IDP, the user is redirected back to the SP. The SP service consumes the Assertion. The user is directed to the Success Terminal.
#.	Upon unsuccessful authentication, the user proceeds down the fallback branch and directed to the Fail Terminal.
#.	Pool sp1.acme.com-pool is assigned to the request for load balancing. Traitional LTM load balancing rules still apply.
#.	The user is granted access via the Allow Terminal.
#.	User credentials failed the selected authentication and is directed to the Reject Terminal.
#.	Users request did not meet either of Subroutine URI requirements.

Policy Agent Configuration
-------------------------------------

URL Branching action used to interrogate the service URL then redirects it to the appropriate SAML Auth Subroutine.

|image003|

This SAML Auth subroutine defines the SAML SP server sp.acme.com-sp.

|image004|

Add the Static Pool for sp.acme.com-sp.

|image005|

This SAML Auth subroutine defines the SAML SP server sp1.acme.com-sp.

|image006|

Add the Static Pool for sp.acme.com-sp.

|image007|

Profile Settings
--------------------------------------

All profile settings are left the defaults

Supporting APM Objects
--------------------------------------

SP Service
--------------------------------------

Local SAML Service Provider

|image008|

Sections not specified contain default values.

General Settings for sp.acme.com-sp.

|image009|

Endpoint  Settings for sp.acme.com-sp.

|image010|

Security Settings for sp.acme.com-sp.

|image011|

Authentication Context for sp.acme.com-sp.

|image012|

Advance for sp.acme.com-sp.

|image014|

General Settings for sp1.acme.com-sp.

|image015|

Endpoint  Settings for sp1.acme.com-sp.

|image016|

Security Settings for sp1.acme.com-sp.

|image017|

Authentication Context for sp1.acme.com-sp.

|image018|

Advance for sp1.acme.com-sp.

|image020|

External IdP Connectors
------------------------------------------

|image021|

General settings for sp.acme.com-sp external connector.

|image022|

Endpoint Single Sign On Service for sp.acme.com-sp external connector.

|image023|

Assertion Settings for sp.acme.com-sp external connector.

|image024|

Security Settings for sp.acme.com-sp external connector.

|image025|

Single Logout Service Settings for sp.acme.com-sp external connector.

|image026|

General settings for sp1.acme.com-sp external connector.

|image027|

Endpoint Single Sign On Service for sp1.acme.com-sp external connector.

|image028|

Assertion Settings for sp1.acme.com-sp external connector.

|image029|

Security Settings for sp1.acme.com-sp external connector.

|image030|

Single Logout Service Settings for sp.acme.com-sp external connector.

|image031|

External Sp Connectors
---------------------------------------------------

|image032|

General settings for saml_office365 external SP connector.

|image033|

Endpoint Single Sign On Service for saml_office365 external SP connector.

|image034|

Security Settings for saml_office365 external SP connector.

|image035|

Single Logout Service Settings for saml_office365 external SP connector.

|image036|

SP Location Settings for saml_office365 external SP connector.

|image037|


User's Perspective
---------------------

The user accessing https://sp.acme.com or https://sp1.acme.com is directed to a SAML Logon Page.

|image039|

The users authentication assertion directed from the SAML-SP to the appropriate SAML-IdP for authorization.

|image040|

Once the user is authenticated they are transparently redirected to the service asset.

|image041|

Once the user in authenticated for sp1.acme.com they are allowed access to sp.acme.com without need to re-authenticate.

|image042|


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
.. |image018| image:: media/018.png
.. |image019| image:: media/019.png
.. |image020| image:: media/020.png
.. |image021| image:: media/021.png
.. |image021| image:: media/022.png
.. |image023| image:: media/023.png
.. |image024| image:: media/024.png
.. |image025| image:: media/025.png
.. |image026| image:: media/026.png
.. |image027| image:: media/027.png
.. |image028| image:: media/028.png
.. |image029| image:: media/029.png
.. |image030| image:: media/030.png
.. |image031| image:: media/031.png
.. |image032| image:: media/032.png
.. |image033| image:: media/033.png
.. |image034| image:: media/034.png
.. |image035| image:: media/035.png
.. |image036| image:: media/036.png
.. |image037| image:: media/037.png
.. |image038| image:: media/038.png
.. |image039| image:: media/039.png
.. |image040| image:: media/040.png
.. |image041| image:: media/041.png
.. |image042| image:: media/042.png
