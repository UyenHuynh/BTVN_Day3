Feature: Login 
    As a user, I want to check the Login Functionality so that I can use that website
    

    Background: 
        Given Login successfully

    Scenario: Login successfully with valid account
    When user enter "tomsmith" for the username and "SuperSecretPassword!" for the password
    Then a message "You logged into a secure area!\n×" should be displayed


    Scenario Outline: Login unsuccesfully with invalid account
    When user enter "<username>" for the username and "<password>" for the password
    Then a message "<message>" should be displayed

    Examples:
        | username   | password             | message                    |
        | abc        | SuperSecretPassword! | Your username is invalid!  |
        | tomsmith   | 123456               | Your password is invalid!  |