Description: Trello Sign In validation

Scenario: Sign In Trello
Given I am on page with URL `https://www.trello.com`
When I click on element located by `xpath(//a[text()="Log in"])`
When I enter `${userEmail}` in field located by `cssSelector(#username)`
When I wait until element located by `id(login-submit)` appears
When I click on element located by `id(login-submit)`
When I enter `${userPassword}` in field located by `xpath(//*[@id="password"])`
When I click on element located by `xpath(//button[@id="login-submit"])`
When I wait until page title contains `| Trello`
