Feature: Sending information through the contact page
          As a visitor to child keeper I would like to send some information to them

Scenario Outline: I want to send information through the contact page
  Given That I am on the child keeper page
  When I click on the Contact Us link
  And I enter a "<name>", "<email address>","<how I heard about us>" and an optional "<question or feedback>"
  Then I should get a successful "<status>"

  Examples:
  |name|email address|how I heard about us|question or feedback|status|
  |Henry|henry.mbadiwe@gmail.com|Current member|Diddle diddle doo, diddle diddle dah|Success|
  |Henry|henry.mbadiwe@gmail.com|Daycare Center|Diddle diddle doo, diddle diddle dah|Success|
