Description: More complex Trello story

Meta:
    @requirementId JIRA-123
    @testCaseId JIRA-T12


Lifecycle:
Before:
Scope: STORY
Given I initialize STORY variable `boardName` with value `#{generate(Horse.breed)}`
Given login Trello with `${userEmail}` username and `${userPassword}` password


Scenario: Create Trello Board via UI
When I switch to `Vividus_testing` workspace
When I create new board named `${boardName}`
Then the board name is `${boardName}`
When I DELETE `${boardName}` board in `${userEmail}` user workspace


Scenario: Validate Recent and Starred menus
Given I am on main application page
When I open `<menuName>` menu
When I change context to element located by `xpath(//section)`
When I COMPARE_AGAINST baseline with name `no<menuName>Boards`
Examples:
|menuName|
|Recent  |
|Starred |
