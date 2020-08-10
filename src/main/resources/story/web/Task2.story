GivenStories: story/web/PreCondition.story
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

Scenario: Establishing baselines
Given I am on the main application page
When I ESTABLISH baseline with `Main page`
When I click on element located `By.Xpath(//a[@href="/vividus_testing/account"])`
When I wait until element located `By.Xpath(//span[text()="Delete this team?"])` appears
When I ESTABLISH baseline with `Settings_Page`
When I click on element located `By.Xpath(//a[contains(@data-tab, "business-class")])`
When I wait until element located `By.Xpath(//span[text()="Start Business Class"])` appears
When I ESTABLISH baseline with `Business_Class_Tab`
When I click on element located `By.Xpath(//span[@name="edit"])`
When I wait until element located `By.Xpath(//span[text()="Save"])` appears
When I ESTABLISH baseline with `Edit_Team`
When I click on element located `By.Xpath(//span[text()="T"])`
When I click on element located `By.Xpath(//span[text()="Profile and Visibility"])`
When I ESTABLISH baseline with `Profile_and_Visibility`

Scenario: Visual checks for previous scenario
Given I am on the main application page
When I COMPARE_AGAINST baseline with `Main Page`
When I click on element located `By.Xpath(//a[@href="/vividus_testing/account"])`
When I wait until element located `By.Xpath(//span[text()="Delete this team?"])` appears
When I COMPARE_AGAINST baseline with `Settings_Page`
When I click on element located `By.Xpath(//a[contains(@data-tab, "business-class")])`
When I wait until element located `By.Xpath(//span[text()="Start Business Class"])` appears
When I COMPARE_AGAINST baseline with `Business_Class_Tab`
When I click on element located `By.Xpath(//span[@name="edit"])`
When I wait until element located `By.Xpath(//span[text()="Save"])` appears
When I COMPARE_AGAINST baseline with `Edit_Team`
When I click on element located `By.Xpath(//span[text()="T"])`
When I click on element located `By.Xpath(//span[text()="Profile and Visibility"])`
When I wait until element located `By.Xpath(//button[text()="Save"])` appears
When I COMPARE_AGAINST baseline with `Profile_and_Visibility`




