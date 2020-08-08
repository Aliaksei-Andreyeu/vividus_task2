Scenario: Sing Up New User
Given I am on the main application page
When I find <= '1' elements by By.xpath(//div[@class='header-control header-auth']) and for each element do
|step|
|When I change context to an element by By.xpath(//div[@class='header-control header-auth'])|
|When I click on an element with the text 'Sign in'|
|When I click on an element by the xpath '//p[@class='popup-reg-footer-actions__register ng-binding']'|
|When I check a checkbox by the xpath '//label[@class="section-accept-data-processing__description ng-binding"]'|
|When I initialize the STORY variable `testUserEmail` with value `#{generate(Name.firstName)}`|
|When I initialize the STORY variable `testUserPass` with value `#{generate(regexify '[abcdefghigk]{10}')}`|
|When I initialize the STORY variable `testUserEmail` with value `#{toUpperCase(${testUserEmail})}`|
|When I enter `${testUserEmail}@as-aws-dev.com` in field located `By.xpath(//input[@id='registrationEmail'])`|
|When I enter `${testUserPass}` in field located `By.xpath(//input[@id='registrationPassword'])`|
|When I click on an element by the xpath '//input[(@type="submit")]'|
