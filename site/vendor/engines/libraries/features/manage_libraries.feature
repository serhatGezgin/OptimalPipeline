@libraries
Feature: Libraries
  In order to have libraries on my website
  As an administrator
  I want to manage libraries

  Background:
    Given I am a logged in refinery user
    And I have no libraries

  @libraries-list @list
  Scenario: Libraries List
   Given I have libraries titled UniqueTitleOne, UniqueTitleTwo
   When I go to the list of libraries
   Then I should see "UniqueTitleOne"
   And I should see "UniqueTitleTwo"

  @libraries-valid @valid
  Scenario: Create Valid Library
    When I go to the list of libraries
    And I follow "Add New Library"
    And I fill in "Name" with "This is a test of the first string field"
    And I press "Save"
    Then I should see "'This is a test of the first string field' was successfully added."
    And I should have 1 library

  @libraries-invalid @invalid
  Scenario: Create Invalid Library (without name)
    When I go to the list of libraries
    And I follow "Add New Library"
    And I press "Save"
    Then I should see "Name can't be blank"
    And I should have 0 libraries

  @libraries-edit @edit
  Scenario: Edit Existing Library
    Given I have libraries titled "A name"
    When I go to the list of libraries
    And I follow "Edit this library" within ".actions"
    Then I fill in "Name" with "A different name"
    And I press "Save"
    Then I should see "'A different name' was successfully updated."
    And I should be on the list of libraries
    And I should not see "A name"

  @libraries-duplicate @duplicate
  Scenario: Create Duplicate Library
    Given I only have libraries titled UniqueTitleOne, UniqueTitleTwo
    When I go to the list of libraries
    And I follow "Add New Library"
    And I fill in "Name" with "UniqueTitleTwo"
    And I press "Save"
    Then I should see "There were problems"
    And I should have 2 libraries

  @libraries-delete @delete
  Scenario: Delete Library
    Given I only have libraries titled UniqueTitleOne
    When I go to the list of libraries
    And I follow "Remove this library forever"
    Then I should see "'UniqueTitleOne' was successfully removed."
    And I should have 0 libraries
 