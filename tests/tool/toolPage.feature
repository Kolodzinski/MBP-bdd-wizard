Feature: Tool Main page

    Scenario: Main navigation bar
        Given I open "https://hammerhead-app-wwgsk.ondigitalocean.app/tool/" page
        Then I verify that "1" element with "Here's a quick description how to use the tool!" "text" is "visible"
        When I "click" the "1" element with "Production Planing Tool" "text"
        Then I verify if the URL "equals" "https://hammerhead-app-wwgsk.ondigitalocean.app/tool"
        When I "click" the "1" element with "MyProcesses" "text"
        Then I verify if the URL "contains" "/tool/MyProcesses"
        Then I go back in the browser
        When I "click" the "1" element with "MyOperations" "text"
        Then I verify if the URL "contains" "/tool/MyOperations"
        Then I go back in the browser
        When I "click" the "1" element with "MyEntities" "text"
        Then I verify if the URL "contains" "/tool/MyEntities"
        Then I go back in the browser
