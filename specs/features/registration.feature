Feature: User Registration
  As a curious user
  I want to sign up to childs keeper
  So I can explore it's awesomeness!

  Scenario: Visiting the
    Given I am on the child keeper site
    When I click the Join Today Link
    And I register a new account as a "<gender>" owner between the ages of "<range>"
    Then I should see registration form

  Examples:
     |gender|range|
     |Male|20-29|
     |Female|20-29|
     |Male|30-39|
     |Female|30-39|

