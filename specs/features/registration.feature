Feature: Registering for child keeper
  As an interested user
  I want to sign up to childs keeper
  So I can explore it's awesomeness!

  Scenario Outline: Registering for child keeper with the join today link
    Given That I am on the child keeper registration site
    When I register a new account with a user name of "<user name>" and a name of "<name>" and a password of "<password>" and a confirmed password of "<confirmed password>"
    And An email address of "<email>" with a gender of "<gender>" and pick that I am between the ages of "<range>""
    And select "<is owner of center>" for "Are you an owner of a center? prompt"
    And I agree to the terms and conditions
    And I click on the Register button
    Then the registration should "<succeed status>"

    Examples:
      |gender|range|user name|name         |email                  |password|confirmed password|is owner of center|succeed status|
      |Male  |20-29|jooxman  |Henry Mbadiwe|henry.mbadiwe@gmail.com|password|password          |Yes               |true          |
      #|Female|20-29|jooxwoman
      #|Male|30-39|joox_sr|
      #|Female|30-39|lady_joox|