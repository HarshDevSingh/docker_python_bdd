# Created by kunwarharsh at 06/09/2021
Feature: Test rest api
  # Enter feature description here

  Scenario: Get users list
    When Make a get request
    Then Check if users list is returned
    Then Check if user's data is correct
