How to contribute a Postman collection
======================================

Naming Conventions
---------------------
#.  Use the follow naming conventions [fqdn]-[optional tags]-create and [fqdn]-[optional tags]-delete. For example:

  - vpn.acme.com-ad-create 
  - vpn.acme.com-ad-delete
  
How to export a Postman Collection
-------------------------------------
::todo.. Need to highlight now to export Postman

#. Following the steps outlined for :ref:`Pushing_content`

Additional Things to Know
------------------------------

#. Ensure the request names are meaningful
#. Ensure each request has the necessary support tests to ensure accurate reporting on success or failure 
#. Ensure that deletion collections remove EVERYTHING or that the supporting solution guide details the components that will remain
#. Collections should only need to be ran once to either create a or delete a solution.  Apply necessary pre-scripts and/or pauses where necessary. 




