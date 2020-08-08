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
|email               |fullname    |
|johndoe@example.com |John Doe    |
|bobsmith@example.com|Robert Smith|

Scenario: Board crearion via API
When I issue a HTTP POST request for a resource with the URL 'https://api.trello.com/1/boards/?key=48349903230fdd1b4f43d19fde281b49&token=2db7039ba4059adb2f57a39e68b991a86ee7f9d61ab6879bcd3cc1b5c8fd3bfd&name=TestingBoard'