#@REQ_CALC-7931
@REQ_CALC-3
Feature:  As a user, I can add two numbers

  @TEST_SQA-4
  Scenario: simple integer addition
    Given I have entered 1 into the calculator
    And I have entered 2 into the calculator
    When I press add
    Then the result should be 3 on the screen

  @TEST_SQA-5
  Scenario: negative integer addition
    Given I have entered -1 into the calculator
    And I have entered 2 into the calculator
    When I press add
    Then the result should be 1 on the screen

#  Scenario Outline: sum of two positive numbers
#    Given I have entered <input_1> into the calculator
#    And I have entered <input_2> into the calculator
#    When I press <button>
#    Then the result should be <output> on the screen
#
#    Examples:
#      | input_1 | input_2 | button | output |
#      | 20      | 30      | add    | 50     |
#      | 2       | 5       | add    | 7      |
#      | 0       | 40      | add    | 40     |
#      | 4       | 50      | add    | 54     |
#      | 5       | 50      | add    | 55     |