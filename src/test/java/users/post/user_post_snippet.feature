@ignore
Feature: Reusable scenarie for post and then delete the same user


    @CreateUser
    Scenario: Pos  a new  user into reqres
    Given  url "https://reqres.in/api/users"
    And request { "name": "Daniel_snippet", "job": "QA Enginner _ snippet" }
    When method post
    Then status 201
    And def IdUser = $.id