@lists
Feature: Manage lists
  In order to manage the lists in the system
  As a user
  I want to be able to CRUD lists

  Scenario: View the details of a list
    Given there is a list called "Muppets" with items:
      | text                 | description     | position |
      | Kermit               | Frog            | 1        |
      | Fozzie               | Bear            | 2        |
      | Swedish Chef         | Bork bork bork  | 3        |
      | Beaker               | Scientist       | 4        |
      | Dr. Bunsen Honeydew  | Scientist       | 5        |
      | Gonzo                | The Great       | 6        |
      | Rowlf                | Dog             | 7        |
    When I go to the list detail page
    Then I should see "Muppets"
    And I should see "Kermit"
    And I should see "Fozzie"
    And I should see "Swedish Chef"
    And I should see "Dr. Bunsen Honeydew"
    And I should see "Gonzo"
    And I should see "Rowlf"

  Scenario: View all the lists
    Given there are lists
      | title                |
      | Taylor Swift Singles |
      | Doctor Who Episodes  |
      | Roller Coasters      |
    When I go to the lists page
    Then I should see "Taylor Swift Singles"
    And I should see "Doctor Who Episodes"
    And I should see "Roller Coasters"

  Scenario: Create a list
    When I go to the new list page
    And I fill in "Title" with "Muppets"
    And I press "Create"
    Then I should see "Muppets"

