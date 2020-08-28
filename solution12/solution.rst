Solution: RDP Gateway (AD Auth)
======================================================================================

This solution documents all the necessary pieces required to create an APM policy for RDP Gateway functional using AD Authentication

Keywords: rdp, ad, password

DC: single, multi


URL
----

https://solution12.acme.com

Objective:
----------

- Gain a basic understanding of RDP gateway policies

.. toctree::
   :maxdepth: 1
   :caption: Content:
   :glob:

   guide/guide.rst



Configuration Comments
------------------------
|
|

Access Blueprint Revision
---------------------------

**4**

Postman Collection(s)
------------------------

solution12-create.postman_collection.json_

.. _solution12-create.postman_collection.json: https://raw.githubusercontent.com/f5devcentral/access-solutions/master/docs/solution12/postman/solution12-create.postman_collection.json

solution12-delete.postman_collection.json_

.. _solution12-delete.postman_collection.json: https://raw.githubusercontent.com/f5devcentral/access-solutions/master/docs/solution12/postman/solution12-delete.postman_collection.json



BIG-IP Versions Tested
---------------------------

- 15.1

BIG-IP Components used:
-------------------------

Read more about the individual components by clicking on the below links

- Virtual Server

  * HTTP Profile
  * Client-side SSL Profile
  * Server-side SSL Profile
  * Connectivity Profile
  * VDI Profile
  * Access Profile

    - AD AAA Object
    - Webtop
    - RDP Resource
    - RDG Profile
