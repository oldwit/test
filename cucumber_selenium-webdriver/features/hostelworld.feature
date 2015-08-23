Feature: Hostelworld
As a user
I want to find available properties in Dublin, Irleand 
In order to get a list of properties properly sorted

  Background: 
  Given open hostelworld main site

  # use case 1
  Scenario: available properties sorted by name
  And search for property in "Dublin, Ireland"
  When sort by "name" is selected  
  Then Property are displayed by name in alphabetical order
  
  # use case 2
  Scenario: available properties sorted by price
  And search for property in "Dublin, Ireland"
  When sort by "price" is selected
  Then Property are displayed by price 

  