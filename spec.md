# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
    used Ruby on Rails, no scaffolding
- [x] Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes) 
    Traveler has_many Destinations  / Goal has_many Destinations
- [x] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User)
    Destination belongs_to Traveler /Destination belongs_to Goal
- [x] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients)
    Traveler has_many goals through Destinations / Goal has_many travelers through Destinations (also my many-to-many)
- [x] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients)
    Traveler has_many goals through Destinations / Goal has_many travelers through Destinations (also my many-to-many)
- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity)
    Has more than only foreign keys --  has location, description, date traveled, completed.
- [ ] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
- [ ] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
- [x] Include signup (how e.g. Devise)
    using Devise, customized to include name, username, email and password at creation of account
- [ ] Include login (how e.g. Devise)
- [x] Include logout (how e.g. Devise)
    Using Devise, changed default and now using delete through :get method
- [ ] Include third party signup/login (how e.g. Devise/OmniAuth)
- [ ] Include nested resource show or index (URL e.g. users/2/recipes)
- [ ] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new)
- [ ] Include form display of validation errors (form URL e.g. /recipes/new)

Confirm:
- [ ] The application is pretty DRY
- [ ] Limited logic in controllers
- [ ] Views use helper methods if appropriate
- [ ] Views use partials if appropriate
