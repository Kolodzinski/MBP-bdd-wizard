Feature: MY Entities

    Scenario: Create a worker with the salary
        Given I open "https://hammerhead-app-wwgsk.ondigitalocean.app/tool/MyEntities" page

        # Creating a salary cost
        When I "click" the "1" element with "Create" "text"
        And I "click" the "1" element with "Cost" "text"
        And I "click" the "1" element with "Create a cost" "text"
        And I "press" "Tab"
        And I "press" "Tab"
        And I "type" "Test Salary"
        And I "press" "Tab"
        And I "type" "260"
        And I "press" "Tab"
        And I "press" "Tab"
        And I "press" "Enter"
        Then I verify that "1" element with "Cost added!" "text" is "visible"


        # Creating a worker with the salary
        When I "click" the "1" element with "Create" "text"
        And I "click" the "1" element with "Worker" "text"
        And I "click" the "1" element with "Create a worker" "text"
        And I "press" "Tab"
        And I "press" "Tab"
        And I "type" "Test Profession"
        And I "press" "Tab"
        And I "type" "Test First name"
        And I "press" "Tab"
        And I "type" "Test Last name"
        And I "press" "Tab"
        And I "press" "Enter"
        And I "type" "Test Salary"
        And I "press" "Tab"
        And I "press" "Tab"
        And I "press" "Enter"
        Then I verify that "1" element with "Worker added!" "text" is "visible"

        # Verifying that the salary appears in the costs workers table
        Then I verify that "2" element with "Test Salary" "text" is "visible"
        Then I verify that "2" element with "260.0" "text" is "visible"

        # Verifying that the worker appears in the table workers table
        And I "click" the "1" element with "Workers" "text"
        Then I verify that "1" element with "Test Profession" "text" is "visible"
        Then I verify that "1" element with "Test First name" "text" is "visible"
        Then I verify that "1" element with "Test Last name" "text" is "visible"
        Then I verify that "1" element with "Test Salary" "text" is "visible"

        # Deleting the worker
        And I "click" the "1" element with "Edit" "text"
        And I "click" the "1" element with "Workers" "text"
        And I "click" the "0" element with "checkbox" "role"
        And I "click" the "1" element with "Update" "text"
        Then I verify that "1" element with "Utilities updated!" "text" is "visible"
        And I "click" the "1" element with "Workers" "text"
        Then I verify that "1" element with "Test Profession" "text" is "not visible"
        Then I verify that "1" element with "Test First name" "text" is "not visible"

        # Deleting the salary cost (need to delete it 2 times because of the bug in the application - the costs are being created twice)
        And I "click" the "1" element with "Costs" "text"
        And I "click" the "0" element with "checkbox" "role"
        And I "click" the "-1" element with "checkbox" "role"
        And I "click" the "1" element with "Update" "text"
        Then I verify that "1" element with "Utilities updated!" "text" is "visible"
        Then I verify that "2" element with "Test Salary" "text" is "not visible"
        Then I verify that "2" element with "260.0" "text" is "not visible"