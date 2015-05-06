Feature : Sending information through the contact page
          As a visitor to child keeper I would like to send some information to them

Scenario : I want to send information through the contact page
  Given That I am on the child keeper page
  When I click on the CONTACT US link
  And I enter a "<name>", "<email address>, "<how I heard about us>" and an optional "<question or feedback>"
  Then I should get a successful "<status>"
