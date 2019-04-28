Feature: Add a new topic entry
  
  As a blogger I want to be able to create a new topic 
  of my interest so that people with similar
  interests can share their opinions
 
 Scenario: As a blogger I want to be able to post a new topic
   Given I am on the home page
   When I click on the "New" link
   Then I should be on the "New Topic" page
   And I should see the "Name" field
   And I should see the "Description" field