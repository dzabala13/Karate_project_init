Feature: Post user on reqres

  Scenario: Pos  a new  user into reqres
    Given  url "https://reqres.in" + "/api/users"
    And request { "name": "Daniel", "job": "QA Enginner" }
    When method post
    Then status 201