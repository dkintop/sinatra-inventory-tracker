# Specifications for the Sinatra Assessment

Specs:

- [x] Use Sinatra to build the app :I did this
- [x] Use ActiveRecord for storing information in a database :I did this
- [x] Include more than one model class (e.g. User, Post, Category) : I have a User model, an Item model, and a Store model.
- [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts) : A store has many users and has many items
- [x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User) : a user belongs to a store and an item belongs to a store.
- [x] Include user accounts with unique login attribute (username or email) :each user must have a unique username
- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying : There are routes to create, read, update, and destroy an item.
- [x] Ensure that users can't modify content created by other users : Users cannot modify content that belongs to a store that they do not belong to. Users assigned to the same store can edit inventory information for that store.
- [x] Include user input validations : I did this
- [x] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new) : I did this
- [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

Confirm

- [x] You have a large number of small Git commits
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message
