How to Contribute to a solution
-----------------------------------

#. Create a solution idea on the library  repo https://github.com/teamaccessonline/library/issues
      - This is to ensure someone else isn't already working on a similar solution
      - If the solution already exists proceed to the next step
      - One of the repo admin will assign a solution folder number to the repo to ensure we do not run into naming convention problem.   You will see someone comment in the issue regarding what number to use.
      - Feel free to continue to build your solution until someone responds with the number. These numbers are assigned daily M-F. You need to know the number so you can publish your content in a branch called solution 
#. Assign your self to a solution idea under the issues tab in the GitHub repo
#. Select a baseline postman collection to help get you started on building out the basic components of your solution 
#. Once a number do a get pull to ensure you have the latest master branch
#. type git checkout -b [solution#]
#. Copy the solutions.rst file from the template folder
#. Customize the template for you solution.  The head name should always contain (In Development) to ensure people do not try to deploy your solution as you are working on it.
#. Set your username "git config user.name [your username] "
#. Verity username was changed "git config user.name"
#. Set email address "git config user.email "Your Email Address"
#. Verify email address "git config user.email"
#. git add .
#. git commit -m "solution.rst add"
#. git push -u origin solution#
#. proceed to GitHub and select your branch
#. Select new pull request 
#. git checkout master
#. git pull
#. Proceed to policy creation steps






