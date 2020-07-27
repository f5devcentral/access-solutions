
=================================
Active Directory API Endpoints
=================================

The IIS server currently hosts a REST service that can used for dynamic configuration of the Microsoft Environment for use in solution development and deployment 

- HTTP Listener  10.1.20.6:81
- HTTPS Listener 10.1.20.6:8443 

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
- GivenName
- Surname
- UserPrincipalName
- EmployeeNumber
- mail
- UserAccountControl
- memberOf



Example Request
::
  
 http://10.1.20.6:81/user?username=user2

Example Response
::

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



The POST version of the user account creation API uses a JSON Body for passing user account creation data.  The following attributes can used when creating a user account

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

Request
::
    http://10.1.20.6:81/user


Request Body
::
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
 http://10.1.20.6:81/user?useridentity=POST_API


Example Response
::
 {
    "status": "Success",
    "useridentity": "POST_API"
 }


**METHOD - PATCH**

The PATCH method allow you to modify a user's account with a single request.  

This request requires a **rtype** key to identity the type of request the API is receiving.

The **rtype** key supports the following values

- attribute
- password
- unlock

The attribute key supports the following attributes to be modified


 - employeeNumber



**Attribute Modification**

Example Request
::

 http://10.1.20.6:81/user

Request Body
::
  
  {
    "rtype": "attribute", 
    "username": "POST_API",
    "employeeNumber": "123456789"

  }


Example Response
::
 
 {
    "sAMAccountName": "POST_API",
    "employeeNumber": "123456"
 }

**Password Change**

Example Request
::

 http://10.1.20.6:81/user

Request Body
::
  

 {

  "rtype": "password",
  "username": "POST_API",
  "password": "123"

 }




Example Response
::
 
 {
    "sAMAccountName": "POST_API"
 }

**Account Unlock**

Example Request
::

 http://10.1.20.6:81/user

Request Body
::
  
 {
  "rtype": "unlock", 
  "username": "POST_API"
 }



Example Response
::
 
 {
    "sAMAccountName": "POST_API",
    "Enabled": true
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

