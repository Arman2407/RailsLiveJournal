Feature: Post
  In order to use posts 
  As a user  
  I should be able to get posts page, make a new post, create

Background:    
  Given I am a registered user    
  And I am logged in

Scenario: Get posts page
  Given I am on the homepage
  When I click on the posts button
  Then I should be redirected to the posts page

Scenario: Make a new post
  Given I am on the posts page
  When I click on the new post button
  Then I should be redirected to the new page

Scenario: Create
  Given I am on the new page
  And I fill in the title form
  And I fill in the content form
  And I fill in the user form
  When I click on the create post button
  Then I should see that my post was successfully created