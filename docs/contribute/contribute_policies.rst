How to Contribute APM Policies
--------------------------------

- Policies should be built in the Commom partition, unless there is a necessary reason to use a different partition 
- The .tar file is used for when importing via AS3

- If using the the Postman Collection templates they assume the Policy was created **Common** Partitiion with the lowercase fqdn name **XXXXX-psp** prior to export.  Naming your policies in that format will reduce the amount of customization you need to perform on the Postman Collection Templates.


How to commit the policy to the repo
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
#. Open command prompt 
#. Type cd c:\library
#. Perform "git pull" to get latest repo
#. Type git checkout -b "solution[#]-policies"
#. Create  a solution[#] subfolder in solutions folder example c:\library\solutions\solution5
#. Create a policies subfolder in solution[#] folder. Example c:\library\solutions\solution5\policies
#. Export your APM policy 
#. Right click the APM policy .tar.gz file.
#. Select 7-Zip >> extract here
#. Copy the .tar file to the policies folder
#. Set your username "git config user.name [your username] "
#. Verity username was changed "git config user.name"
#. Set email address "git config user.email "Your Email Address"
#. Verify email address "git config user.email"
#. From command prompt type git add.
#. From command prompt type git commit -m "comment"
#. Git push -u origin [solution[#]]-policies
#. Some will review and merge if policy functions


What to do next
^^^^^^^^^^^^^^^^^

#. Once branch is merged in to master you can do the following
#. Git checkout master
#. Git pull
#. Git branch -d [name of your new branch]-policies
#. Proceed to irules
