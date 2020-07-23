

Active Directory API Endpoints
=================================

The IIS server currently hosts a REST service that can used for dynamic configuration of the Microsoft Environment for use in solution development and deployment 


user accounts
---------------

The user accounts API allows you to create, modify, and delete user accounts.

/aduser/create
^^^^^^^^^^^^^^^


METHOD - GET
^^^^^^^^^^^^

The GET version of user account creation API uses a query string for passing user account creation data. The following attributes are used when creating user accounts

- userIdentity 
- employeeNumber
- Name
- Givenname
- Surname
- UserPrincipalName
- OU
- Password
- email


Example Request
^^^^^^^^^^^^^^^^
::
     https://10.1.20.7/aduser/create?userIdentity=EXAMPLE_USER&employeeNumber=100&Name='Post API'&Givenname=POST&Surname=API&UserPrincipalName=postapi@f5lab.local&OU=IT&Password=F@k3P@assw0rd&email=postapi@acme.com



METHOD - POST
^^^^^^^^^^^^^^^


The POST version of the user account creation API uses a JSON Body for passing user account creation data.  The following attributes are used when creating a user account


Example Request
^^^^^^^^^^^^^^^^^^

**Request**
::
    https://{{BIGIP1_ADDRESS1}}/aduser/create


**Request Body**
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


METHOD - PATCH

METHOD - DELETE


certificates
--------------

METHOD - GET

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

