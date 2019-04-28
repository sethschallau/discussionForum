Feature: Add a post to the topic created
  Now that I have created a topic 
  I want to go ahead and post something about the topic
  
Scenario: I want to be able to create a post about the topic I created
  Given I am on the home page
  When I click on the "New" link
  Then I should be on the "New Topic" page
  And I should see the "Name" field
  And I should see the "Description" field
  When I click on the "Save Topic" button
  Then I should be on the "Add a Post" page
  And I should see the "Title" field
  And I should see the "Text" field