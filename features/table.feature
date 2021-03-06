Feature: Browser Feature

  Scenario: Testing access to /table/index.html
    Given I am on "/table/index.html"
    Then I should see "You are about to test table."

  Scenario: Testing columns
    Given I am on "/table/index.html"

    Then I should see 2 columns in the "table" table

    Then the columns schema of the "table" table should match:
      | columns |
      | Lorem   |
      | Ipsum   |

  Scenario: Testing rows
    Given I am on "/table/index.html"

    Then I should see 2 rows in the "table" table
    Then I should see 2 rows in the 1st "table" table

    Then the data in the 1st row of the "table" table should match:
      | col1   | col2   |
      | Lorem  | Ipsum  |

    Then the data in the 2nd row of the "table" table should match:
      | col1   | col2   |
      | Dolor  | Sit    |

  Scenario: Testing cell content
    Given I am on "/table/index.html"

    Then the 1st column of the 1st row in the "table" table should contain "Lorem"
    Then the 2nd column of the 1st row in the "table" table should contain "Ipsum"
