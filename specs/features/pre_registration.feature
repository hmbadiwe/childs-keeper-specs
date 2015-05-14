Feature: Accessing the registration page
  As a curious user
  I am considering registering for the site

  Scenario: Registering for child keeper with the join today link
    Given I am on the child keeper site
    When I click the Join Today Link
    Then I should see the registration form
    And I should be on the valid registration site


    Scenario: Registering for child keeper with the Join Now button
      Given I am on the child keeper site
      When I click the Join Now Button
      Then I should see the registration form
      And I should be on the valid registration site

    Scenario: Registering for child keeper from the login page
      Given That I am on the child keeper login page
      When I click the Click here to register link
      Then I should see the registration form
      And I should be on the valid registration site
