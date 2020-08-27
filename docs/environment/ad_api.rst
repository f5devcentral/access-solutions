
=================================
Active Directory API Endpoints
=================================

The IIS server currently hosts a REST service that can used for dynamic configuration of the Microsoft Environment for use in solution and lab deployment 

- HTTP Listener  10.1.20.6:81
- HTTPS Listener 10.1.20.6:8443 

---------------
user accounts
---------------

The user accounts API allows you to interact with Active Directory user accounts.



ENDPOINT - /user
^^^^^^^^^^^^^^^^^

**METHOD - GET**

Returns the following user attributes


- sAMAccountName
- DistinguishedName
- Name
- GivenName
- Surname
- UserPrincipalName
- EmployeeNumber
- mail
- UserAccountControl
- memberOf



Example Request

.. code-block:: json

	http://10.1.20.6:81/user?username=user2

Example Response

.. code-block:: json


	 {
	    "sAMAccountName": "user2",
	    "DistinguishedName": "CN=user2,OU=Product Development,DC=f5lab,DC=local",
	    "Name": "user2",
	    "GivenName": "Road",
	    "Surname": "Runner",
	    "UserPrincipalName": "user2@f5lab.local",
	    "employeeNumber": null,
	    "mail": "runner@acme.com",
	    "userAccountControl": 66048,
	    "memberOf": [
	        "CN=CreateUser,OU=IT,DC=f5lab,DC=local",
	        "CN=Product Management,CN=Users,DC=f5lab,DC=local",
	        "CN=Domain Admins,CN=Users,DC=f5lab,DC=local"
	    ]
	 }

**METHOD - POST**



The following attributes can used when creating a user account

- username(sAMAccountName)
- DistinguishedName
- Name
- Surname
- Givenname
- UserPrincipalName
- EmployeeNumber
- UserAccountControl
- memberOf
- password
- email
- app_spn(For use with kerberos delegation accounts)


Example Request

.. code-block:: json

	http://10.1.20.6:81/user


Request Body

.. code-block:: 

	  {
	    "Username":"POST_API",
	    "employeeNumber":"100",
	    "GivenName":"post",
	    "Surname": "api",
	    "UserPrincipalName":"12890@f5lab.local",
	    "OU":"IT",
	    "Password":"letmein",
	    "email":"postapi@acme.com"
	    "app_spn": "HTTP/testapp.acme.com"
	  }

Example Response

.. code-block:: json

	 {
	    "sAMAccountName": "POST_API",
	    "employeeNumber": "100",
	    "userAccountControl": 66048
	 }


**METHOD - DELETE**

Removed the user account from Active Directory.  

- useridentity(saMAccountName)



Example Request

.. code-block:: json

 	http://10.1.20.6:81/user

Example Body

.. code-block:: json

	 {
	    "Username":"POST_API"
	 }

Example Response

.. code-block:: json

	 {
	    "status": "Success",
	    "username": "POST_API"
	 }


**METHOD - PATCH**

Allows modification of a user account with a single request.  

This request requires a **rtype** key to identity the type of request the API is receiving.

The **rtype** key supports the following values

- attribute
- password
- unlock





**Attribute Modification**


The attribute key supports the following attributes to be modified

 - employeeNumber


Example Request

.. code-block:: json

 	http://10.1.20.6:81/user

Request Body

.. code-block:: json
  
	  {
	    "rtype": "attribute", 
	    "username": "POST_API",
	    "employeeNumber": "123456789"

	  }


Example Response

.. code-block:: json
 
	 {
	    "sAMAccountName": "POST_API",
	    "employeeNumber": "123456"
	 }

**Password Change**

Example Request

.. code-block:: json

	http://10.1.20.6:81/user

Request Body

.. code-block:: json

	 {
	  "rtype": "password",
	  "username": "POST_API",
	  "password": "123"
	 }




Example Response

.. code-block:: json
 
	 {
	    "sAMAccountName": "POST_API"
	 }

**Account Unlock**

Example Request

.. code-block:: json

	 http://10.1.20.6:81/user

Request Body

.. code-block:: json
  
	 {
	  "rtype": "unlock", 
	  "username": "POST_API"
	 }



Example Response

.. code-block:: json
 
	{
	    "sAMAccountName": "POST_API",
	    "Enabled": true
	}


--------------
certificates
--------------

The certificates API retrieves the certificate associated with the specified user account


ENDPOINT - user/cert
^^^^^^^^^^^^^^^^^^^^^

**METHOD - GET**

Example Request

.. code-block:: json

 	http://10.1.20.6:81/user/cert?username=user2


-------------
IP Addresses
-------------



ENDPOINT - /addr/scope-status
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**METHOD - GET** 

The scope status endpoint returns all IP address assignment associated with scope specified in the request.

The following scopes are supported 

- 10.1.10.96 (BIGIP1_SCOPE)
- 10.1.10.192 (BIGIP2_SCOPE)
- 10.1.20.32 (IIS_SCOPE)


Example Request 

.. code-block:: json

 	http://10.1.20.6:81/addr/scope-status?scope=10.1.10.96


ENDPOINT - /addr/available 
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**METHOD - GET** 

The available endpoint returns the next available address for the scope specified in the request

Example Request

.. code-block:: json

	http://10.1.20.6:81/addr/available?scope=10.1.10.96

Example Response

.. code-block:: json

	{
	   "address": "10.1.10.102"
	}



ENDPOINT - /addr/checkout
^^^^^^^^^^^^^^^^^^^^^^^^^^

**METHOD - POST**

Example Request

.. code-block:: json

	http://10.1.20.6:81/addr/checkout

Example Request

.. code-block:: json

	{
	 "scope":"10.1.10.96",
	 "address":"10.1.10.103",
	 "name":"testvs"
	}

Example Response

.. code-block:: json

	{
	   "status": "Success",
	   "address": "10.1.10.103",
	   "name": "testvs"
	}




ENDPOINT - /addr/checkin
^^^^^^^^^^^^^^^^^^^^^^^^^^

**METHOD - DELETE**

Example Request

.. code-block:: json

	https://10.1.20.6:81/addr/checkin?address=10.1.10.103

Example Response

.. code-block:: json

	{
	   "status": "Success",
	   "address": "10.1.10.103"
	}

------
DNS
------

ENDPOINT - /dns
^^^^^^^^^^^^^^^

The DNS endpoint allows the creation and deletion of A and PTR records

**METHOD - POST**



Example Request

.. code-block:: json

	https://10.1.20.6:81/dns

Example Body

.. code-block:: json

	{
	 "record_type":"a",
	 "fqdn":"app.acme.com",
	 "computer_ip":"10.1.10.35"
	}

Example Rsopnose

.. code-block:: json
 
	{
	   "status": "Success",
	   "record_type": "A",
	   "hostname": "testapp",
	   "zone": "acme.com",
	   "computer_ip": "10.1.20.35"
	}

**METHOD - DELETE**

Example Request

.. code-block:: json

	https://10.1.20.6:81/dns

Example Body

.. code-block:: json

	{
	 "record_type":"a",
	 "fqdn":"{{DNS1_NAME}}",
	 "computer_ip":"{{IIS_ADDRESS1}}" 
	}

Example Response

.. code-block:: json

	{
	   "status": "Success",	
	   "record_type": "A",
	   "hostname": "testapp",
	   "zone": "acme.com",
	   "computer_ip": "10.1.20.35"
	}


---------
Websites
---------

The websites API allows dynamic creation and deletion of websites. 

ENDPOINT - /websites
^^^^^^^^^^^^^^^^^^^^

**METHOD - POST**

The POST method creates websites on the IIS server based on templates located in the access-infra repo.  To view examples of those site click the link below. The following authentication methods are supported 

- none
- Basic
- kerberos
- saml (template 1 only)

Template 2 supports the customization of background colors using a customization key.  The following colors are supported.

- red
- green
- blue
- white
 


Example Request

.. code-block:: json

	https://10.1.20.6:81/websites

Example Body

.. code-block:: json

	{
	  "site_name":"site.acme.com",
	  "http_port":"80",
	  "https_port":"443",
	  "computer_ip":"10.1.20.33",
	  "template_number": "2",
	  "authentication": "none",
	  "customization": {
		"background": "green"
	
		}
	}


**METHOD - DELETE**

Example Request

.. code-block:: json

	https://10.1.20.6:81/websites

Example Body

.. code-block:: json

	{
	 "site_name":"site.acme.com" 
	}

Example Resonse

.. code-block:: json

	{
	   "status": "Success",
	   "site_name": "testapp.acme.com"
	}


----------
Desktop
----------

ENDPOINT - /desktop
^^^^^^^^^^^^^^^^^^^^

The Desktop API copied files from the student_files folder located in specified lab or solution folder to the users desktop 

**METHOD - POST**

Example Request

.. code-block:: json

	https://10.1.20.6:81/desktop

Example Body

.. code-block:: json

	{
	 "repo":"labs",
	 "number":"3",
	 "user": "user1"
	 }


Example Response

.. code-block:: json

	{
	   "status": "Success",
	   "repo": "labs",
	   "number": "3",
	   "user": "user1"
	}




**METHOD - DELETE**

Example Request

.. code-block:: json

	https://10.1.20.6:81/desktop


Example Body

.. code-block:: json

	{
	 "repo":"labs",
	 "number":"3",
	 "user": "user1"
	}

Example Response

.. code-block:: json

	{
	   "status": "Success",
	   "repo": "labs",
	   "number": "3",
	   "user": "user1"
	}

-----------
COMPUTER
-----------


ENDPOINT - /computer
^^^^^^^^^^^^^^^^^^^^

The computer endpoint assigned Service Principal names to the Active Directory computer account

**METHOD - POST**

Example Request

.. code-block:: json

	https://10.1.20.6:81/computer


Example Body

.. code-block:: json

	{
	 "computer":"IIS",
	 "spn":"HTTP/app.acme.com" 
	}

Example Response

.. code-block:: json

	{
	   "status": "Success",
	   "computer": "IIS",
	   "spn": "HTTP/app.acme.com"
	}

**METHOD - DELETE**

Example Request

.. code-block:: json

	https://10.1.20.6:81/computer


Example Body

.. code-block:: json

	{
	 "computer":"IIS",
	 "spn":"HTTP/app.acme.com" 
	}

Example Response

.. code-block:: json

	{
	   "status": "Success",
	   "computer": "IIS",
	   "spn": "HTTP/app.acme.com"
	}

