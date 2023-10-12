Feature: Nopcommerce Registration

As a User
     I want to check the Register functionality of Nopcommerce

Background: I am on Nopcommerce Registration page
Given       I open the Google Chrome Browser
When        I open the Url http://demo.nopcommerce.com/register
Then        I am Nopcommerce Registration page

Scenario Outline: I should not be able to register with invalid data on mandatory field (*) of registration page
            When  I enter first name "<First Name>"
            And   I enter last name "<Last Name>"
            And   I enter Email address "<Email>"
            And   I enter Password "<Password>"
            And   I enter Confirm Password "<Confirm Password>"
            And   Click on Register button
           Then   I can see an error message "<error message>"
            And   I am not able to register

     Examples:
        |First Name |Last Name|Email           |Password|Confirm Password|error message                              |
        |" "        |bakshi   |bakshi@gmail.com|456897  |456897          |please enter First Name                    |
        |Rohan      |" "      |bakshi@gmail.com|456897  |456897          |please enter Last Name                     |
        |Rohan      |bakshi   |" "             |456897  |456897          |please enter valid email                   |
        |Rohan      |bakshi   |bakshi@gmail.com|" "     |456897          |password is required                       |
        |Rohan      |bakshi   |bakshi@gmail.com|456897  |" "             |confirm password is required               |
        |Rohan      |bakshi   |bakshi@gmail.com|456897  |45689           |password and confirm password do not match |
        |Rohan      |bakshi   |bakshi@gmail.com|45689   |" "             |minimum 6 character password is required   |
        |" "        |" "      |" "             |" "     |" "             |Mandatory (*) filed is required            |

Scenario: I should be able to select any one radio button from Gender Label of Personal Details section
   Given  I am on Gender label of your personal detail section
   When   I select "Male" radio button
   And    I select "FeMale" radio button
   Then   I am able to select any one of the radio button

Scenario Outline: I should be able to select Day, Month and Year from drop down list of Date of birth field
           Given  I am on Date of Birth field of your personal detail section
           When   I select "<Day>"
           And    I select "<Month>"
           And    I select "<Year>"
           Then   I am able to select Day, Month and Year from drop down list

          Examples:
             |Day|Month      |Year|
             |11 |November   |1989|

Scenario: I should be able to Check and uncheck the Newsletter box on Options section
   Given  I am Newsletter label on Options section
   When   I click on Newsletter checkbox
   And    I again click on Newsletter Checkbox
   Then   I was able to check and uncheck the box next to Newsletter label

Scenario:  I should be able to register with valid mandatory field (*) field data on registration page
     When  I enter first name "<Rohan>"
     And   I enter last name "<bakshi>"
     And   I enter Email "<bakshi@gmail.com>"
     And   I enter Password "<456897>"
     And   I enter Confirm Password "<456897>"
     Then  I click on Register button
     And   I was not able to register successfully