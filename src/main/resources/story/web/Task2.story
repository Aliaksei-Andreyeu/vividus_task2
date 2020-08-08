Scenario: Sign In
Given I am on the main application page
When I click on element located `By.Xpath(//a[text()="Log In"])`
When I enter `${UserEmail}` in field located `By.Xpath(//*[@id="user"])`
When I wait until element located `By.Xpath(//input[@value="Log in with Atlassian"])` appears
When I click on element located `By.Xpath(//input[@value="Log in with Atlassian"])`
When I wait until element located `By.Xpath(//button[@id="login-submit"])` appears
When I enter `${UserPass}` in field located `By.Xpath(//*[@id="password"])`
When I click on element located `By.Xpath(//button[@id="login-submit"])`
When I wait until the page title contains the text '| Trello'

Scenario: Navigating pages
Given I am on a page with the URL 'https://trello.com/testing_profile/boards'
When I click on element located `By.Xpath(//span[@name="information"])`
When I click on element located `By.Xpath(//a[text()="Pricing"])`
