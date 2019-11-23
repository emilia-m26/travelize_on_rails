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
    Traveler has_many goals through Destinations / Goal has_many travelers through Destinations
- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity)  
    Has more than only foreign keys --  has location, description, date traveled, completed.
- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)  
    Have validations in traveler, goal, and destination models
- [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)  
    Destination.travel_experience which is being used in URL: /travel-inspiration
- [x] Include signup (how e.g. Devise)  
    using Devise, customized to include name, username, email and password at creation of account
- [x] Include login (how e.g. Devise)  
    Login using Devise
- [x] Include logout (how e.g. Devise)  
    Using Devise, changed default and now using delete through :get method
- [x] Include third party signup/login (how e.g. Devise/OmniAuth)  
    OmniAuth with GitHub
- [x] Include nested resource show or index (URL e.g. users/2/recipes)  
    Has nested show (goals/:goal_id/destinations/:id) and nested index (goals/:goal_id/destinations)
- [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new)  
    Has nested new where a destination can be added to an existing goal (goals/:goal_id/destinations/new)
- [x] Include form display of validation errors (form URL e.g. /recipes/new)  
    URL /goals/new

Confirm:
- [x] The application is pretty DRY
- [x] Limited logic in controllers
- [x] Views use helper methods if appropriate
- [x] Views use partials if appropriate
