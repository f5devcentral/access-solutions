How to Deploy a Solution
==========================



To access your dedicated lab environment, you will require a web browser
and Remote Desktop Protocol (RDP) client software. The web browser will be used to
access the Lab Environment. The RDP client will be used to connect to the Jump
Host, where you will be able to access the BIG-IP management interfaces (HTTPS, SSH).

+-----------------------------------------------------------------------------------------------+
| 1. Establish a RDP connection to **jumphost.f5lab.local**  with the following credentials:    |                           
|                                                                                               |
|    - **UserID: f5lab\\user1** / **Password: user1**                                           |
|                                                                                               |
| 2. Open the Command Prompt                                                                    |
|                                                                                               |
| 3. Type **cd c:\\solutions\\[solution #]\\postman**                                           |
|                                                                                               |
| 4. Type **Newman run [name of postman collection] -e [name of environment variables] -k**     |
|                                                                                               |
| ..note::  Reference each Solution Guide's Postman Collection section to determine             |   
|           the appropriate Postman Collection to run                                           |
|                                                                                               |
| 5. Access the appropriate BIG-IP using the credentials below                                  |
|                                                                                               |
|    - **UserID: admin** / **Password: admin**                                                  |
|                                                                                               |
+-----------------------------------------------------------------------------------------------+
| Note: All work for this lab will be performed exclusively from the provided lab environment.  |
|                                                                                               |
|       No installation or interaction with your local system is required.                      |
+-----------------------------------------------------------------------------------------------+
