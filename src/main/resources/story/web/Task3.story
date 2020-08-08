Scenario: Logging in with composite steps
Given I am on the main application page
When I login into trello

Scenario: UI controls validation
Given I am on the main application page
When I click on element located `By.Xpath(//div[text()="Project_1"])`
When I find >= '1' elements by By.Xpath(//span[text()="Make a dinner"]) and for each element do
|step|
|When I click on element located `By.Xpath(//span[text()="Make a dinner"])`|
|When I click on element located `By.Xpath(//span[@title="Archive"])`|
|When I click on element located `By.Xpath(//a[@class="icon-md icon-close dialog-close-button js-close-window"])`|

