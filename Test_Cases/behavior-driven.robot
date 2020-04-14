#behavior-driven.robot
*** Settings ***
Library         Selenium2Library
Resource        ${CURDIR}${/}..${/}global${/}keywords.robot
#Force Tags      behavior-driven
Suite Teardown  Close Browser

*** Keywords ***
Home page is Open
  Open Browser  ${URL}  ${BROWSER}
  Title Should Be  Online Shopping site in India: Shop Online for Mobiles, Books, Watches, Shoes and More - Amazon.in


Enter the thing you want to Search
    Input Text                        ${Input_Serach}     television
  Click Button                        ${CALC-BUTTON LOCATOR}
  
The next page will Open
    Title Should Be  Amazon.in: television
    
       
*** Test Cases ***
Amazon Sample
  Given Home page is Open
  When Enter the thing you want to Search
  Then The next page will Open

