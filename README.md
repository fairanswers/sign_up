# README
This application is a simple clone for SignUpGenius.  In it we use
* Actionmailer for emails
* Devise for authentication
* Cancancan for authorization
* Rails admin for data manipulation
* Roles to limit access to rails_admin
* Encrypted Credentials - new in rails 5.2
https://www.engineyard.com/blog/rails-encrypted-credentials-on-rails-5.2



To get started I used this tutorial: https://codepany.com/blog/rails-5-user-accounts-with-3-types-of-roles-devise-rails_admin-cancancan/

Emails didn't work until I enabled less secure apps for gmail, instructions here: https://support.google.com/accounts/answer/6010255

Tests didn't work until I included devise helpers in the test class: include Devise::Test::IntegrationHelpers


Next Steps:
* Adding event allows you to create tasks underneath it.
