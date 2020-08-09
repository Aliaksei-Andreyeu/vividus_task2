Scenario: Logging in with composite steps
Given I am on the main application page
When I login into trello

Scenario: Failing Intentionally
Given I am on the main application page
When I go to settings page
Then a link with the text 'Change Language' does not exist

Scenario: Establishing visual check
Given I am on the main application page
When I click on element located `By.Xpath(//span[@name="information"])`
When I ESTABLISH baseline with `Information_window` ignoring:
|ELEMENT|
|By.xpath(//a[@class="EH2QwxKlVSdNGF"])|

Scenario: Perfoming visual check
Given I am on the main application page
When I click on element located `By.Xpath(//span[@name="information"])`
When I COMPARE_AGAINST baseline with `Information_window` ignoring:
|ELEMENT|
|By.xpath(//a[@class="EH2QwxKlVSdNGF"])|
