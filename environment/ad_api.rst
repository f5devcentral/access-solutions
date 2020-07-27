
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

The certificates API retrieves the certificate associated with the specified user account

METHOD - GET


ENDPOINT - user/cert

Example Request 

http://10.1.20.6:81/user/cert?username=user2

Example Response
::
 {
    "certificate": "-----BEGIN CERTIFICATE-----\r\nMIIGGTCCBQGgAwIBAgITXgAAAAxCnmIQT0gz9QAAAAAADDANBgkqhkiG9w0BAQsFADBIMRUwEwYK\r\nCZImiZPyLGQBGRYFbG9jYWwxFTATBgoJkiaJk/ IsZAEZFgVmNWxhYjEYMBYGA1UEAxMPZGMxLmY1\r\nbGFiLmxvY2FsMB4XDTE5MTEyNzEzMjU0NloXDTIwMTEyNjEzMjU0NlowbTEVMBMGCgmSJomT8ixk\r\nARkWBWxvY2FsMRUwEwYKCZImiZPyLGQBGRYFZjVsYWIxDjAMBgNVBAMTBVVzZXJzMQ4wDAYDVQQD\r\nEwV1c2VyMjEdMBsGCSqGSIb3DQEJARYOdXNlcjJAYWNtZS5jb20wggEiMA0GCSqGSIb3DQEBAQUA\r\nA4IBDwAwggEKAoIBAQDANjiox1b3IKVsbhbfzIZsApLQIsAvNDZTs9B6DNaffT0WqE8jyoHza0Jw\r\ndy3eVTBfmhyANq7IcdXD+mf6a0L5bcEg96LaN6sEFscyx2BYDdQoExRbu4oQNvo82SIaqqGVOyAS\r\nikay57r3isccliv7eUBM7gttIlOeEtpeWI5rKxVdlERXBXHMHEbUP/hYsW42L+aTCjFlWNL6EPqr\r\nwJW5A5ZtNpBg9Kil9jQv2haILpEFLuREYN6OTkwsbsGQE+EXVJbLQ+v/8kNNwCdRo4O7uhZfgiLu\r\n9MjaUiRHf+ZTgfs5R93BtMFM2CWcEGsQgzYiElUWRk5QwXmL4Zvnyl2/AgMBAAGjggLVMIIC0TAX\r\nBgkrBgEEAYI3FAIECh4IAFUAcwBlAHIwKQYDVR0lBCIwIAYKKwYBBAGCNwoDBAYIKwYBBQUHAwQG\r\nCCsGAQUFBwMCMA4GA1UdDwEB/wQEAwIFoDBEBgkqhkiG9w0BCQ8ENzA1MA4GCCqGSIb3DQMCAgIA\r\ngDAOBggqhkiG9w0DBAICAIAwBwYFKw4DAgcwCgYIKoZIhvcNAwcwHQYDVR0OBBYEFIz84iPdCkAZ\r\nJ3Ogsu1AmtUdo3S9MB8GA1UdIwQYMBaAFNhpUMHsIixtS9g6y/FyNrayg9V6MIHJBgNVHR8EgcEw\r\ngb4wgbuggbiggbWGgbJsZGFwOi8vL0NOPWRjMS5mNWxhYi5sb2NhbCxDTj1kYzEsQ049Q0RQLENO\r\nPVB1YmxpYyUyMEtleSUyMFNlcnZpY2VzLENOPVNlcnZpY2VzLENOPUNvbmZpZ3VyYXRpb24sREM9\r\nZjVsYWIsREM9bG9jYWw/Y2VydGlmaWNhdGVSZXZvY2F0aW9uTGlzdD9iYXNlP29iamVjdENsYXNz\r\nPWNSTERpc3RyaWJ1dGlvblBvaW50MIHqBggrBgEFBQcBAQSB3TCB2jCBrgYIKwYBBQUHMAKGgaFs\r\nZGFwOi8vL0NOPWRjMS5mNWxhYi5sb2NhbCxDTj1BSUEsQ049UHVibGljJTIwS2V5JTIwU2Vydmlj\r\nZXMsQ049U2VydmljZXMsQ049Q29uZmlndXJhdGlvbixEQz1mNWxhYixEQz1sb2NhbD9jQUNlcnRp\r\nZmljYXRlP2Jhc2U
b2JqZWN0Q2xhc3M9Y2VydGlmaWNhdGlvbkF1dGhvcml0eTAnBggrBgEFBQcw\r\nAYYbaHR0cDovL2RjMS5mNWxhYi5sb2NhbC9vY3NwMDwGA1UdEQQ1MDOgIQYKKwYBBAGCNxQCA6AT\r\nDBF1c2VyMkBmNWxhYi5sb2NhbIEOdXNlcjJAYWNtZS5jb20wDQYJKoZIhvcNAQELBQADggEBACsP\r\nDOoidSwHnOnxSxC2Kn8XOkBQbvYDqH6buQJpknCzsZR2oa60EYT0EQ7x0ww0aS4aaEMpB3xcyxwZ\r\ntjhWjuhznDcNc4ZvXJJGUuWzJhYXSZ2T4mpxWJKbCcCOzevgvVyRo334v543O7sLfLL8n+Wpybf9\r\nsJYIQyyWUqdleSt4PVZKPv30oa0GCBjT9cCpxCIvInbatH1Y3vE4JRTY3aZvXb1AH67Z+VjvFMFd\r\nO13IUVDjIyqUZ4yW7FwUG0Z57v8lB7HmMzHO7TA+LfkaUHKvI6BGINcMmq7fGHshmZf5rb/ U0MQj\r\nqo/E/zJ+oth1odKbBxKPcCzN+I88U6fSZ3A=\r\n-----END CERTIFICATE-----"
 }


IP Addresses
-------------

METHOD - GET 


ENDPOINT - /addr/scope-status

The scope status endpoint returns all IP address assignment associated with scope specified in the request.

The following scopes are supported 

- 10.1.10.96 (BIGIP1_SCOPE)
- 10.1.10.192 (BIGIP2_SCOPE)
- 10.1.20.32 (IIS_SCOPE)


Example Request 
::
 http://10.1.20.6:81/addr/scope-status?scope=10.1.10.96


ENDPOINT - /addr/available 

The available endpoint returns the next available address for the scope specified in the request

Example Request
::
 http://10.1.20.6:81/addr/available?scope=10.1.10.96

Example Response
::
 {
    "address": "10.1.10.102"
 }


METHOD - POST


ENDPOINT - /addr/checkout

Example Request
::
  http://10.1.20.6:81/addr/checkout

Example Request
::

 {
  "scope":"10.1.10.96",
  "address":"10.1.10.103",
  "name":"testvs"
 }

Example Response
::

{
    "status": "Success",
    "address": "10.1.10.103",
    "name": "testvs"
}


METHOD - DELETE

ENDPOINT - /addr/checkin

Example Request

https://10.1.20.6:81/addr/checkin?address=10.1.10.103

Example Response

{
    "status": "Success",
    "address": "10.1.10.103"
}


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

