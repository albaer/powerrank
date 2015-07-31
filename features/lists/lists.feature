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
    And I press "Create List"
    Then I should see "Muppets"

  #@javascript
  #Scenario: Create a list with items
  #  When I go to the new list page
  #  And I fill in "Title" with "Muppets"
  #  And I fill in "Item" with "Kermit"
  #  And I press "Create List"
  #  Then I should see "Muppets"
  #  And I should see "Kermit"

  Scenario: Edit list page shows the lists items
    Given there is a list called "Muppets" with items:
      | text                 | description     | position |
      | Kermit               | Frog            | 1        |
      | Fozzie               | Bear            | 2        |
      | Swedish Chef         | Bork bork bork  | 3        |
      | Beaker               | Scientist       | 4        |
      | Dr. Bunsen Honeydew  | Scientist       | 5        |
      | Gonzo                | The Great       | 6        |
      | Rowlf                | Dog             | 7        |
    When I go to the list edit page
    Then I should see a field prefilled with "Muppets"
    And I should see a field prefilled with "Kermit"
    And I should see a field prefilled with "Fozzie"
    And I should see a field prefilled with "Swedish Chef"
    And I should see a field prefilled with "Dr. Bunsen Honeydew"
    And I should see a field prefilled with "Gonzo"
    And I should see a field prefilled with "Rowlf"

  Scenario: Edit a list including its items
    Given there is a list called "Muppets" with items:
      | text                 | description     | position |
      | Kermit               | Frog            | 1        |
    When I go to the list edit page
    And I fill in "Text" with "Fozzie"
    And I press "Update List"
    Then I should see "Fozzie"
    And I should not see "Kermit"

