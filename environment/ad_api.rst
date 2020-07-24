
=================================
Active Directory API Endpoints
=================================

The IIS server currently hosts a REST service that can used for dynamic configuration of the Microsoft Environment for use in solution development and deployment 

HTTP Listener  10.1.20.6:81
HTTPS Listener 10.1.20.6:8443 

--------------
user accounts
---------------

The user accounts API allows you to create, modify, and delete user accounts.



ENDPOINT - /user
^^^^^^^^^^^^^^^^^

**METHOD - GET**

Returns the following user attributes


- sAMAccountName
- DistinguishedName
- Name
- SID
- UserPrincipalName
- EmployeeNumber
- UserAccountControl
- memberOf



Example Request
::
  
 https:///user?useridentity=POST_API

Example Response

::

 {
    "sAMAccountName": "POST_API",
    "DistinguishedName": "CN=POST_API,OU=IT,DC=f5lab,DC=local",
    "Name": "POST_API",
    "SID": {
        "BinaryLength": 28,
        "AccountDomainSid": {
            "BinaryLength": 24,
            "AccountDomainSid": "S-1-5-21-2642334090-1672167261-698369401",
            "Value": "S-1-5-21-2642334090-1672167261-698369401"
        },
        "Value": "S-1-5-21-2642334090-1672167261-698369401-1154"
    },
    "UserPrincipalName": "12890@f5lab.local",
    "employeeNumber": "123456",
    "userAccountControl": 66048,
    "memberOf": [
        "CN=Website Admin,OU=Sales Engineering,DC=f5lab,DC=local",
        "CN=IT,CN=Users,DC=f5lab,DC=local"
    ]
 }

**METHOD - POST**



The POST version of the user account creation API uses a JSON Body for passing user account creation data.  The following attributes are used when creating a user account


Example Request

Request
::
    https://10.1.20.6:81/user


Request Body
::
    {
    "Username":"POST_API",
    "employeeNumber":"100",
    "GivenName":"post",
    "Surname": "api",
    "UPN":"12890@f5lab.local",
    "OU":"IT",
    "Password":"letmein",
    "emailaddress":"postapi@acme.com"
    }

Example Response
::

 {
    "sAMAccountName": "POST_API",
    "employeeNumber": "100",
    "userAccountControl": 66048
 }


**METHOD - DELETE**

The DELETE method removed the user account from Active Directory.  The following attributes are passed as a query string to delete the user account.

- useridentity(saMAccountName)



Example Request
::
 https://10.1.20.6:1/user?useridentity=GET_API


Example Response
::
 {
    "status": "Success",
    "useridentity": "POST_API"
 }




**METHOD - PATCH**

The PATCH method allow you to modify a user attribute per request. The following attributes are supported.


 - employeeNumber


Example Request
::

 https://10.1.20.6:81/user?useridentity=POST_API&DriverLicense=123456



Example Response
::
 
 {
    "sAMAccountName": "POST_API",
    "employeeNumber": "123456"
 }


ENDPOINT - /user/delegation
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**Request**
::
   https://10.1.20.7/aduser/delegation

**Request Body**
::
   {
   "Username":"DELEGATION_API",
   "UPN":"HOST/DELEGATION.f5lab.local",
   "ou":"IT",
   "Password":"kerbaccount",
   "app_spn": "HTTP/{{DNS1_NAME}}"
   }



certificates
--------------

METHOD - GET


ENDPOINT - user/cert

Example Request 

http://10.1.20.7/aduser/cert?useridentity=user1


IP Addresses
-------------

METHOD - GET 

METHOD - POST

METHOD - DELETE

DNS
------

METHOD - POST

METHOD - DELETE

Websites
---------

METHOD - POST

METHOD - DELETE

Desktop
----------

METHOD - POST

METHOD - DELETE


COMPUTER
-----------

METHOD - POST

METHOD - DELETE

