Scenario: Logging in with composite steps
Given I am on the main application page
When I login into trello

Scenario: UI controls validation
Given I am on the main application page
When I click on element located `By.Xpath(//span[@class="_24AWINHReYjNBf"])`
When I click on element located `By.xpath(//span[text()="Activity"])`
When I wait until the page title contains the text 'Activity'
When I find >= `1` elements `By.Xpath(//a[text()="Load More Activity"])` and while they exist do up to 5 iteration of
|step|
|When I click on element located `By.Xpath(//a[text()="Load More Activity"])`|