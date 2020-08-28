Scenario: Signing up
Given I am on the main application page
When I click on element located `By.Xpath(//a[text()="Sign Up"])`
When I enter `<email>` in field located `By.Xpath(//*[@id="email"])`
When I click on element located `By.Xpath(//*[@id="signup-submit"])`
When I wait until an element with the name 'Enter full name' appears
When I enter `<fullname>` in field located `By.Xpath(//*[@id="displayName"])`
When I wait until an element with the name 'Create password' appears
When I enter `#{generate(Internet.password)}` in field located `By.Xpath(//*[@id="password"])`
When I click on element located `By.Xpath(//span[text()="Sign up"])`
Then the page title is 'Crushed by captcha'
Examples:
|email              |fullname|
|johndoe@example.com|John Doe|